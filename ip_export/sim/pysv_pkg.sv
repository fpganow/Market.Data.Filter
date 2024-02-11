`ifndef PYSV_PYSV
`define PYSV_PYSV
package pysv;
import "DPI-C" function chandle MyList_pysv_init();
import "DPI-C" function void MyList_append(input chandle self,
                                           input int value);
import "DPI-C" function void MyList_append_list(input chandle self,
                                                input chandle in_list);
import "DPI-C" function void MyList_destroy(input chandle self);
import "DPI-C" function void MyList_from_array(input chandle self,
                                               input int in_list);
import "DPI-C" function int unsigned MyList_get_byte_enables(input chandle self,
                                                             input int index);
import "DPI-C" function int MyList_get_idx(input chandle self,
                                           input int idx);
import "DPI-C" function int MyList_get_length(input chandle self);
import "DPI-C" function int MyList_get_num_words(input chandle self);
import "DPI-C" function longint unsigned MyList_get_word(input chandle self,
                                                         input int index);
import "DPI-C" function int MyList_is_aligned(input chandle self);
import "DPI-C" function void MyList_prepend_list(input chandle self,
                                                 input chandle in_list);
import "DPI-C" function void MyList_replace_list(input chandle self,
                                                 input int in_py_list);
import "DPI-C" function void MyList_set_idx(input chandle self,
                                            input int idx,
                                            input int value);
import "DPI-C" function int MyList_to_array(input chandle self);
import "DPI-C" function string MyList_to_str(input chandle self,
                                             input int no_x);
import "DPI-C" function int get_conf_commands_(input chandle out_list,
                                               input int tickers);
import "DPI-C" function void pysv_finalize();
class PySVObject;
chandle pysv_ptr;
endclass
typedef class MyList;
class MyList extends PySVObject;
  function new(input chandle ptr=null);
    if (ptr == null) begin
      pysv_ptr = MyList_pysv_init();
    end
    else begin
      pysv_ptr = ptr;
    end
  endfunction
  function void append(input int value);
    MyList_append(pysv_ptr, value);
  endfunction
  function void append_list(input PySVObject in_list);
    MyList_append_list(pysv_ptr, in_list.pysv_ptr);
  endfunction
  function void destroy();
    MyList_destroy(pysv_ptr);
  endfunction
  function void from_array(input int in_list);
    MyList_from_array(pysv_ptr, in_list);
  endfunction
  function int unsigned get_byte_enables(input int index);
    return MyList_get_byte_enables(pysv_ptr, index);
  endfunction
  function int get_idx(input int idx);
    return MyList_get_idx(pysv_ptr, idx);
  endfunction
  function int get_length();
    return MyList_get_length(pysv_ptr);
  endfunction
  function int get_num_words();
    return MyList_get_num_words(pysv_ptr);
  endfunction
  function longint unsigned get_word(input int index);
    return MyList_get_word(pysv_ptr, index);
  endfunction
  function int is_aligned();
    return MyList_is_aligned(pysv_ptr);
  endfunction
  function void prepend_list(input PySVObject in_list);
    MyList_prepend_list(pysv_ptr, in_list.pysv_ptr);
  endfunction
  function void replace_list(input int in_py_list);
    MyList_replace_list(pysv_ptr, in_py_list);
  endfunction
  function void set_idx(input int idx,
                        input int value);
    MyList_set_idx(pysv_ptr, idx, value);
  endfunction
  function int to_array();
    return MyList_to_array(pysv_ptr);
  endfunction
  function string to_str(input int no_x);
    return MyList_to_str(pysv_ptr, no_x);
  endfunction
endclass
function int get_conf_commands(input MyList out_list,
                               input int tickers);
  return get_conf_commands_(out_list.pysv_ptr, tickers);
endfunction
endpackage
`endif // PYSV_PYSV
