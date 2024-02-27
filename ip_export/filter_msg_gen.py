from pysv import (
    DataType,
    compile_lib,
    generate_sv_binding,
    sv
)
#from common import GenerateOption
import math
from pathlib import Path
import sys
import tomllib
from typing import Dict, List


class FilterBench(object):

    @sv(path_or_str=DataType.String,
        backup_path=DataType.String)
    def __init__(self,
                 path_or_str: str,
                 backup_path: str = None):
        toml_file = None
        self._config_file_name = "<raw string>"

        try:
            if Path(path_or_str).exists() is True:
                self._config_file_name = path_or_str
                with open(Path(path_or_str), mode="rb") as fin:
                    toml_file = tomllib.load(fin)
            elif Path(backup_path).exists() is True:
                self._config_file_name = backup_path
                with open(Path(backup_path), mode="rb") as fin:
                    toml_file = tomllib.load(fin)
        except OSError as ose:
            print(f'Config is a string')
            print('-'*80); sys.stdout.flush()
            toml_file = tomllib.loads(path_or_str)

        if toml_file is None:
            self.LOG_NOW('Exception')
            raise Exception(f'Failed to load config from {path_or_str}')

        self._name = toml_file['name']
        self._description = toml_file['description']
        self._watch_list = toml_file['watchlist']

        self._number_of_messages = toml_file['generator']['number_of_messages']
        self._securities_gen = []
        for security in toml_file['security']:
            self.LOG_NOW("Parsing Security")
            sec_gen_dict = {}
            sec_gen_dict['symbol'] = security['symbol']
            if 'weight' in security:
                sec_gen_dict['weight'] = security['weight']
            else:
                sec_gen_dict['weight'] = math.nan
            if 'book_size_range' in security:
                sec_gen_dict['book_size_range'] = security['book_size_range']
            else:
                sec_gen_dict['book_size_range'] = 10
            if 'price_range' in security:
                sec_gen_dict['price_range'] = security['price_range']
            else:
                sec_gen_dict['price_range'] = [75.00, 125.00]
            if 'size_range' in security:
                sec_gen_dict['size_range'] = security['size_range']
            else:
                sec_gen_dict['size_range'] = [25, 200]

            self._securities_gen.append(sec_gen_dict)

    @sv(msg=DataType.String)
    def LOG_NOW(self, msg: str):
        print(msg)
        sys.stdout.flush()

    @sv(return_type=DataType.String)
    def name(self) -> str:
        return self._name

    @sv(return_type=DataType.String)
    def description(self) -> str:
        return self._description

    @sv(return_type=DataType.String)
    def watch_list(self) -> List[str]:
        return self._watch_list

    @sv(return_type=DataType.Int)
    def number_of_messages(self) -> int:
        return self._number_of_messages

    @sv(return_type=DataType.String)
    def get_config_file(self) -> str:
        return self._config_file_name

    @sv(return_type=DataType.String)
    def print_header(self) -> str:
        watch_list = '\n'.join(['  - ' + x for x in self._watch_list])
        securities_gen = '\n'.join([ str(x) for x in self._securities_gen])
        return f"""
------------------------------------------------------------------------------
Benchmark name: {self.name()}
Long description:
{self.description()}

Watchlist:
{watch_list}

Generator:
# of messages: {self.number_of_messages()}

Generator.Securities:
{securities_gen}
------------------------------------------------------------------------------
"""

    @sv(return_type=DataType.Int)
    def watchlist_get_size(self) -> int:
        return len(self._watch_list)

    @sv(idx=DataType.Int,
        return_type=DataType.ULongInt)
    def watchlist_get_item(self, idx: int) -> int:
        right_padded = self._watch_list[idx] + ((8 - len(self._watch_list[idx])) * " ")
        val = int.from_bytes(right_padded.encode(), "big")
#        print(f'{right_padded} == val: {hex(val)}')
        return val


    @sv(return_type=DataType.Bit)
    def has_msg(self) -> bool:
        return False

    @sv(return_type=DataType.Int)
    def is_ok(self):
        return 100


class MyList(object):
    @sv()
    def __init__(self):
        self._data = []

    @sv()
    def get_idx(self, idx):
        return self._data[idx]

    @sv()
    def set_idx(self, idx, value):
        if len(self._data) > idx:
            self._data[idx] = value

    @sv()
    def append(self, value):
        self._data.append(value)

    @sv(in_list=DataType.Object)
    def append_list(self, in_list):
        self._data.extend(in_list)

    @sv(in_list=DataType.Object)
    def prepend_list(self, in_list):
        self._data = in_list + self._data[:]

    @sv()
    def replace_list(self, in_py_list):
        self._data = in_py_list

    @sv()
    def get_length(self):
        return len(self._data)

    @sv()
    def get_num_words(self):
        return ((len(self._data) // 8) + (len(self._data) % 8 > 0))

    @sv()
    def is_aligned(self):
        return (len(self._data) % 8 == 0)

    @sv(index=DataType.Int,
        return_type=DataType.ULongInt)
    def get_word(self, index):
        final_word = 0
        try:
            data_to_copy = self._data.copy()

            start_idx = index * 8
            stop_idx = start_idx + 8
            if start_idx + 8 > len(data_to_copy):
                stop_idx = len(data_to_copy)

            for i in range(start_idx, stop_idx):
                final_word = (final_word << 8) | data_to_copy[i]

            num_zeros = 8 - (stop_idx - start_idx)
            # Add padding
            for i in range(num_zeros):
                final_word = (final_word << 8) | 0

        except Exception as EX:
            print(f'Exception in MyList.get_word(..): {ex}')
            sys.stdout.flush()

        return final_word

    @sv(index=DataType.Int,
        return_type=DataType.UInt)
    def get_byte_enables(self, index):
        start_idx = index * 8
        stop_idx = start_idx + 8
        if start_idx + 8 > len(self._data):
            stop_idx = len(self._data)

        num_zeros = 8 - (stop_idx - start_idx)
        print(f'num_zeroes: {num_zeros}')
        casted = (0xff << num_zeros) & 0xf
        print(f'casted: {hex(casted)} - {bin(casted)}')
        return (0xff << num_zeros) & 0xff

    @sv()
    def from_array(self, in_list):
        self._data = in_list

    @sv(return_type=DataType.Int)
    def to_array(self) -> int:
        return self._data

    @sv(no_x=DataType.Int,
            return_type=DataType.String)
    def to_str(self, no_x=False):
        if hasattr(self, '_data') is False:
            return '[]'
        elif self._data is None:
            return '[]'
        try:
            hdr = '0x'
            if no_x is True:
                hdr = ''
            res = '[' + ' '.join([ str.format('{}{:02X}', hdr, x) for x in self._data]) + ']'
        except Exception as ex:
            print(f'Exception in MyList.get_str(...): {ex}')
            sys.stdout.flush()
        return res

@sv(out_list=MyList, ticker=DataType.String, return_type=DataType.Int)
def get_conf_commands(out_list: MyList, tickers: str) -> int:
    out_list.append_list([0, 0, 0, 0, 0, 0, 0, 1])
    return 0

##############################################################################
# PYSV Related functions
##############################################################################
def compile():
    # compile the a shared_lib into build folder
    # lib_name='pysv'
    # release_build=False
    # clean_up_build=True
    # add_sys_path=False # Whether to add system path
    lib_path = compile_lib([MyList,
                            FilterBench,
                            get_conf_commands], cwd="build")

    # generate SV binding
    # pkg_name='pysv'
    # pretty_print=True
    #filename='out_sv_file.sv'
    generate_sv_binding([MyList,
                         FilterBench,
                         get_conf_commands], filename="pysv_pkg.sv")

if __name__ == "__main__":
    compile()
