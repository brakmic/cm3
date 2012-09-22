UNSAFE INTERFACE M3CG_MultiPass;

(* This persists a run of M3CG calls to memory, so that multiple
 * passes can be run over it. It provides for two or more different approaches.
 * 1 You can walk the data calling ISTYPE. This is presumably too slow to bother with.
 * 2 You can walk the data looking at the enum op. This lets you handle multiple cases in closer together code.
 * 3 You can implement "mini" M3CGs and pass them to call(). This lets you split up your code more.
 * I expect to use #3.
 *)

IMPORT M3CG_Ops, M3CG, Target;
FROM M3CG IMPORT Type, MType, IType, RType, AType, ZType, Sign;
FROM M3CG IMPORT Name, Var, Proc, Alignment, Label;
FROM M3CG IMPORT Frequency, CallingConvention, CompareOp, ConvertOp, AtomicOp;
FROM M3CG IMPORT BitSize, ByteSize, BitOffset, ByteOffset, RuntimeError;
FROM M3CG IMPORT MemoryOrder;
FROM M3CG_Binary IMPORT Op;

TYPE cg_t = M3CG_Ops.Public;
TYPE typeid_t = INTEGER; (* HACK that Tony insists on *)
TYPE var_t = Var OBJECT tag: INTEGER END;
TYPE proc_t = Proc OBJECT tag: INTEGER END;

TYPE T <: Public;

TYPE Public = M3CG_Ops.Public OBJECT
 METHODS
  get_data(): REF ARRAY OF REFANY;
  call(cg:  M3CG_Ops.Public);
END;

PROCEDURE New(): T;

TYPE op_t = OBJECT
    op: Op;
    METHODS
          call(cg: M3CG_Ops.Public);
END;

TYPE import_procedure_t = op_t OBJECT name: Name; n_params: INTEGER; return_type: Type; callingConvention: CallingConvention OVERRIDES call := call_import_procedure END;
TYPE declare_procedure_t = op_t OBJECT name: Name; n_params: INTEGER; return_type: Type; level: INTEGER; callingConvention: CallingConvention; exported: BOOLEAN; parent: proc_t OVERRIDES call := call_declare_procedure END;
TYPE next_label_t = op_t OBJECT label_count: INTEGER; OVERRIDES call := call_next_label END;
TYPE set_error_handler_t = op_t OBJECT proc: PROCEDURE(msg: TEXT); OVERRIDES call := call_set_error_handler END;
TYPE begin_procedure_t = op_t OBJECT proc: proc_t; OVERRIDES call := call_begin_procedure END;
TYPE end_procedure_t = op_t OBJECT proc: proc_t; OVERRIDES call := call_end_procedure END;
TYPE import_global_t = op_t OBJECT name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: typeid_t OVERRIDES call := call_import_global END;
TYPE declare_segment_t = op_t OBJECT name: Name; typeid: typeid_t; is_const: BOOLEAN OVERRIDES call := call_declare_segment END;
TYPE declare_global_t = op_t OBJECT name: Name; byte_size: ByteSize; alignment: Alignment; typeid: Type; type: typeid_t; exported, inited: BOOLEAN OVERRIDES call := call_declare_global END;
TYPE declare_constant_t = op_t OBJECT name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: typeid_t; exported, inited: BOOLEAN OVERRIDES call := call_declare_constant END;
TYPE declare_local_t = op_t OBJECT name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: typeid_t; in_memory, up_level: BOOLEAN; frequency: Frequency OVERRIDES call := call_declare_local END;
TYPE declare_param_t = op_t OBJECT name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: typeid_t; in_memory, up_level: BOOLEAN; frequency: Frequency OVERRIDES call := call_declare_param END;
TYPE declare_temp_t = op_t OBJECT byte_size: ByteSize; alignment: Alignment; type: Type; in_memory: BOOLEAN OVERRIDES call := call_declare_temp END;
TYPE begin_unit_t = op_t OBJECT optimize: INTEGER OVERRIDES call := call_begin_unit END;
TYPE end_unit_t = op_t OBJECT OVERRIDES call := call_end_unit END;
TYPE import_unit_t = op_t OBJECT name: Name OVERRIDES call := call_import_unit END;
TYPE export_unit_t = op_t OBJECT name: Name OVERRIDES call := call_export_unit END;
TYPE set_source_file_t = op_t OBJECT file: TEXT OVERRIDES call := call_set_source_file END;
TYPE set_source_line_t = op_t OBJECT line: INTEGER OVERRIDES call := call_set_source_line END;
TYPE declare_typename_t = op_t OBJECT typeid: typeid_t; name: Name OVERRIDES call := call_declare_typename END;
TYPE declare_array_t = op_t OBJECT typeid, index_typeid, element_typeid: typeid_t; bit_size: BitSize OVERRIDES call := call_declare_array END;
TYPE declare_open_array_t = op_t OBJECT typeid, element_typeid: typeid_t; bit_size: BitSize OVERRIDES call := call_declare_open_array END;
TYPE declare_enum_t = op_t OBJECT typeid: typeid_t; n_elts: INTEGER; bit_size: BitSize OVERRIDES call := call_declare_enum END;
TYPE declare_enum_elt_t = op_t OBJECT name: Name OVERRIDES call := call_declare_enum_elt END;
TYPE declare_packed_t = op_t OBJECT typeid: typeid_t; bit_size: BitSize; base: typeid_t OVERRIDES call := call_declare_packed END;
TYPE declare_record_t = op_t OBJECT typeid: typeid_t; bit_size: BitSize; n_fields: INTEGER OVERRIDES call := call_declare_record END;
TYPE declare_field_t = op_t OBJECT name: Name; bit_offset: BitOffset; bit_size: BitSize; typeid: typeid_t OVERRIDES call := call_declare_field END;
TYPE declare_set_t = op_t OBJECT typeid, domain_typeid: typeid_t; bit_size: BitSize OVERRIDES call := call_declare_set END;
TYPE declare_subrange_t = op_t OBJECT typeid, domain_typeid: typeid_t; min, max: Target.Int; bit_size: BitSize OVERRIDES call := call_declare_subrange END;
TYPE declare_pointer_t = op_t OBJECT typeid, target_typeid: typeid_t; brand: TEXT; traced: BOOLEAN OVERRIDES call := call_declare_pointer END;
TYPE declare_indirect_t = op_t OBJECT typeid, target_typeid: typeid_t OVERRIDES call := call_declare_indirect END;
TYPE declare_proctype_t = op_t OBJECT typeid: typeid_t; n_formals: INTEGER; return_typeid: typeid_t; n_raises: INTEGER; callingConvention: CallingConvention OVERRIDES call := call_declare_proctype END;
TYPE declare_formal_t = op_t OBJECT name: Name; typeid: typeid_t OVERRIDES call := call_declare_formal END;
TYPE declare_raises_t = op_t OBJECT name: Name OVERRIDES call := call_declare_raises END;
TYPE declare_object_t = op_t OBJECT typeid, super_typeid: typeid_t; brand: TEXT; traced: BOOLEAN; n_fields, n_methods: INTEGER; field_size: BitSize OVERRIDES call := call_declare_object END;
TYPE declare_method_t = op_t OBJECT name: Name; signature: typeid_t OVERRIDES call := call_declare_method END;
TYPE declare_opaque_t = op_t OBJECT typeid, super_typeid: typeid_t OVERRIDES call := call_declare_opaque END;
TYPE reveal_opaque_t = op_t OBJECT lhs_typeid, rhs_typeid: typeid_t OVERRIDES call := call_reveal_opaque END;
TYPE declare_exception_t = op_t OBJECT name: Name; arg_typeid: typeid_t; raise_proc: BOOLEAN; base: var_t; offset: INTEGER OVERRIDES call := call_declare_exception END;
TYPE set_runtime_proc_t = op_t OBJECT name: Name; proc: proc_t OVERRIDES call := call_set_runtime_proc END;
TYPE bind_segment_t = op_t OBJECT segment: var_t; byte_size: ByteSize; alignment: Alignment; type: Type; exported, inited: BOOLEAN OVERRIDES call := call_bind_segment END;
TYPE free_temp_t = op_t OBJECT var: var_t OVERRIDES call := call_free_temp END;
TYPE begin_init_t = op_t OBJECT var: var_t OVERRIDES call := call_begin_init END;
TYPE end_init_t = op_t OBJECT var: var_t OVERRIDES call := call_end_init END;
TYPE init_int_t = op_t OBJECT byte_offset: ByteOffset; int: Target.Int; type: Type OVERRIDES call := call_init_int END;
TYPE init_proc_t = op_t OBJECT byte_offset: ByteOffset; proc: proc_t OVERRIDES call := call_init_proc END;
TYPE init_label_t = op_t OBJECT byte_offset: ByteOffset; label: Label OVERRIDES call := call_init_label END;
TYPE init_var_t = op_t OBJECT byte_offset: ByteOffset; var: var_t; bias: ByteOffset OVERRIDES call := call_init_var END;
TYPE init_offset_t = op_t OBJECT byte_offset: ByteOffset; var: var_t OVERRIDES call := call_init_offset END;
TYPE init_chars_t = op_t OBJECT byte_offset: ByteOffset; text: TEXT OVERRIDES call := call_init_chars END;
TYPE init_float_t = op_t OBJECT byte_offset: ByteOffset; float: Target.Float OVERRIDES call := call_init_float END;
TYPE begin_block_t = op_t OBJECT OVERRIDES call := call_begin_block END;
TYPE end_block_t = op_t OBJECT OVERRIDES call := call_end_block END;
TYPE note_procedure_origin_t = op_t OBJECT proc: proc_t OVERRIDES call := call_note_procedure_origin END;
TYPE set_label_t = op_t OBJECT label: Label; barrier: BOOLEAN OVERRIDES call := call_set_label END;
TYPE jump_t = op_t OBJECT label: Label OVERRIDES call := call_jump END;
TYPE if_true_t = op_t OBJECT type: IType; label: Label; frequency: Frequency OVERRIDES call := call_if_true END;
TYPE if_false_t = op_t OBJECT type: IType; label: Label; frequency: Frequency OVERRIDES call := call_if_false END;
TYPE if_compare_t = op_t OBJECT type: ZType; compare_op: CompareOp; label: Label; frequency: Frequency OVERRIDES call := call_if_compare END;
TYPE case_jump_t = op_t OBJECT type: IType; labels: REF ARRAY OF Label OVERRIDES call := call_case_jump END;
TYPE exit_proc_t = op_t OBJECT type: Type OVERRIDES call := call_exit_proc END;
TYPE load_t = op_t OBJECT var: var_t; byte_offset: ByteOffset; mtype: MType; ztype: ZType OVERRIDES call := call_load END;
TYPE store_t = op_t OBJECT var: var_t; byte_offset: ByteOffset; ztype: ZType; mtype: MType OVERRIDES call := call_store END;
TYPE load_address_t = op_t OBJECT var: var_t; byte_offset: ByteOffset OVERRIDES call := call_load_address END;
TYPE load_indirect_t = op_t OBJECT byte_offset: ByteOffset; mtype: MType; ztype: ZType OVERRIDES call := call_load_indirect END;
TYPE store_indirect_t = op_t OBJECT byte_offset: ByteOffset; ztype: ZType; mtype: MType OVERRIDES call := call_store_indirect END;
TYPE load_nil_t = op_t OBJECT OVERRIDES call := call_load_nil END;
TYPE load_integer_t = op_t OBJECT type: IType; int: Target.Int OVERRIDES call := call_load_integer END;
TYPE load_float_t = op_t OBJECT type: RType; float: Target.Float OVERRIDES call := call_load_float END;
TYPE compare_t = op_t OBJECT ztype: ZType; itype: IType; compare_op: CompareOp OVERRIDES call := call_compare END;
TYPE add_t = op_t OBJECT type: AType OVERRIDES call := call_add END;
TYPE subtract_t = op_t OBJECT type: AType OVERRIDES call := call_subtract END;
TYPE multiply_t = op_t OBJECT type: AType OVERRIDES call := call_multiply END;
TYPE divide_t = op_t OBJECT type: RType OVERRIDES call := call_divide END;
TYPE div_t = op_t OBJECT type: IType; a, b: Sign OVERRIDES call := call_div END;
TYPE mod_t = op_t OBJECT type: IType; a, b: Sign OVERRIDES call := call_mod END;
TYPE negate_t = op_t OBJECT type: AType OVERRIDES call := call_negate END;
TYPE abs_t = op_t OBJECT type: AType OVERRIDES call := call_abs END;
TYPE max_t = op_t OBJECT type: ZType OVERRIDES call := call_max END;
TYPE min_t = op_t OBJECT type: ZType OVERRIDES call := call_min END;
TYPE cvt_int_t = op_t OBJECT rtype: RType; itype: IType; convert_op: ConvertOp OVERRIDES call := call_cvt_int END;
TYPE cvt_float_t = op_t OBJECT atype: AType; rtype: RType OVERRIDES call := call_cvt_float END;
TYPE set_union_t = op_t OBJECT byte_size: ByteSize OVERRIDES call := call_set_union END;
TYPE set_difference_t = op_t OBJECT byte_size: ByteSize OVERRIDES call := call_set_difference END;
TYPE set_intersection_t = op_t OBJECT byte_size: ByteSize OVERRIDES call := call_set_intersection END;
TYPE set_sym_difference_t = op_t OBJECT byte_size: ByteSize OVERRIDES call := call_set_sym_difference END;
TYPE set_member_t = op_t OBJECT byte_size: ByteSize; type: IType OVERRIDES call := call_set_member END;
TYPE set_compare_t = op_t OBJECT byte_size: ByteSize; compare_op: CompareOp; type: IType OVERRIDES call := call_set_compare END;
TYPE set_range_t = op_t OBJECT byte_size: ByteSize; type: IType OVERRIDES call := call_set_range END;
TYPE set_singleton_t = op_t OBJECT byte_size: ByteSize; type: IType OVERRIDES call := call_set_singleton END;
TYPE not_t = op_t OBJECT type: IType OVERRIDES call := call_not END;
TYPE and_t = op_t OBJECT type: IType OVERRIDES call := call_and END;
TYPE or_t = op_t OBJECT type: IType OVERRIDES call := call_or END;
TYPE xor_t = op_t OBJECT type: IType OVERRIDES call := call_xor END;
TYPE shift_t = op_t OBJECT type: IType OVERRIDES call := call_shift END;
TYPE shift_left_t = op_t OBJECT type: IType OVERRIDES call := call_shift_left END;
TYPE shift_right_t = op_t OBJECT type: IType OVERRIDES call := call_shift_right END;
TYPE rotate_t = op_t OBJECT type: IType OVERRIDES call := call_rotate END;
TYPE rotate_left_t = op_t OBJECT type: IType OVERRIDES call := call_rotate_left END;
TYPE rotate_right_t = op_t OBJECT type: IType OVERRIDES call := call_rotate_right END;
TYPE widen_t = op_t OBJECT sign: BOOLEAN OVERRIDES call := call_widen END;
TYPE chop_t = op_t OBJECT OVERRIDES call := call_chop END;
TYPE extract_t = op_t OBJECT type: IType; sign_extend: BOOLEAN OVERRIDES call := call_extract END;
TYPE extract_n_t = op_t OBJECT type: IType; sign_extend: BOOLEAN; count: CARDINAL OVERRIDES call := call_extract_n END;
TYPE extract_mn_t = op_t OBJECT type: IType; sign_extend: BOOLEAN; offset, count: CARDINAL OVERRIDES call := call_extract_mn END;
TYPE insert_t = op_t OBJECT type: IType OVERRIDES call := call_insert END;
TYPE insert_n_t = op_t OBJECT type: IType; count: CARDINAL OVERRIDES call := call_insert_n END;
TYPE insert_mn_t = op_t OBJECT type: IType; offset, count: CARDINAL OVERRIDES call := call_insert_mn END;
TYPE swap_t = op_t OBJECT a, b: Type OVERRIDES call := call_swap END;
TYPE pop_t = op_t OBJECT type: Type OVERRIDES call := call_pop END;
TYPE copy_n_t = op_t OBJECT itype: IType; mtype: MType; overlap: BOOLEAN OVERRIDES call := call_copy_n END;
TYPE copy_t = op_t OBJECT n: INTEGER; mtype: MType; overlap: BOOLEAN OVERRIDES call := call_copy END;
TYPE zero_n_t = op_t OBJECT itype: IType; mtype: MType OVERRIDES call := call_zero_n END;
TYPE zero_t = op_t OBJECT n: INTEGER; type: MType OVERRIDES call := call_zero END;
TYPE loophole_t = op_t OBJECT from, to: ZType OVERRIDES call := call_loophole END;
TYPE abort_t = op_t OBJECT code: RuntimeError OVERRIDES call := call_abort END;
TYPE check_nil_t = op_t OBJECT code: RuntimeError OVERRIDES call := call_check_nil END;
TYPE check_lo_t = op_t OBJECT type: IType; i: Target.Int; code: RuntimeError OVERRIDES call := call_check_lo END;
TYPE check_hi_t = op_t OBJECT type: IType; i: Target.Int; code: RuntimeError OVERRIDES call := call_check_hi END;
TYPE check_range_t = op_t OBJECT type: IType; a, b: Target.Int; code: RuntimeError OVERRIDES call := call_check_range END;
TYPE check_index_t = op_t OBJECT type: IType; code: RuntimeError OVERRIDES call := call_check_index END;
TYPE check_eq_t = op_t OBJECT type: IType; code: RuntimeError OVERRIDES call := call_check_eq END;
TYPE add_offset_t = op_t OBJECT i: INTEGER OVERRIDES call := call_add_offset END;
TYPE index_address_t = op_t OBJECT type: IType; size: INTEGER OVERRIDES call := call_index_address END;
TYPE start_call_direct_t = op_t OBJECT proc: proc_t; level: INTEGER; type: Type OVERRIDES call := call_start_call_direct END;
TYPE start_call_indirect_t = op_t OBJECT type: Type; callingConvention: CallingConvention OVERRIDES call := call_start_call_indirect END;
TYPE pop_param_t = op_t OBJECT type: MType OVERRIDES call := call_pop_param END;
TYPE pop_struct_t = op_t OBJECT typeid: typeid_t; byte_size: ByteSize; alignment: Alignment OVERRIDES call := call_pop_struct END;
TYPE pop_static_link_t = op_t OBJECT OVERRIDES call := call_pop_static_link END;
TYPE call_direct_t = op_t OBJECT proc: proc_t; type: Type OVERRIDES call := call_call_direct END;
TYPE call_indirect_t = op_t OBJECT type: Type; callingConvention: CallingConvention OVERRIDES call := call_call_indirect END;
TYPE load_procedure_t = op_t OBJECT proc: proc_t OVERRIDES call := call_load_procedure END;
TYPE load_static_link_t = op_t OBJECT proc: proc_t OVERRIDES call := call_load_static_link END;
TYPE comment_t = op_t OBJECT a, b, c, d: TEXT := NIL OVERRIDES call := call_comment END;
TYPE store_ordered_t = op_t OBJECT ztype: ZType; mtype: MType; order: MemoryOrder OVERRIDES call := call_store_ordered END;
TYPE load_ordered_t = op_t OBJECT mtype: MType; ztype: ZType; order: MemoryOrder OVERRIDES call := call_load_ordered END;
TYPE exchange_t = op_t OBJECT mtype: MType; ztype: ZType; order: MemoryOrder OVERRIDES call := call_exchange END;
TYPE compare_exchange_t = op_t OBJECT mtype: MType; ztype: ZType; r: IType; success, failure: MemoryOrder OVERRIDES call := call_compare_exchange END;
TYPE fence_t = op_t OBJECT order: MemoryOrder OVERRIDES call := call_fence END;
TYPE fetch_and_op_t = op_t OBJECT atomic_op: AtomicOp; mtype: MType; ztype: ZType; order: MemoryOrder OVERRIDES call := call_fetch_and_op END;

PROCEDURE call_import_procedure(self: import_procedure_t; cg: cg_t);
PROCEDURE call_declare_procedure(self: declare_procedure_t; cg: cg_t);
PROCEDURE call_next_label(self: next_label_t; cg: cg_t);
PROCEDURE call_set_error_handler(self: set_error_handler_t; cg: cg_t);
PROCEDURE call_begin_procedure(self: begin_procedure_t; cg: cg_t);
PROCEDURE call_end_procedure(self: end_procedure_t; cg: cg_t);
PROCEDURE call_import_global(self: import_global_t; cg: cg_t);
PROCEDURE call_declare_segment(self: declare_segment_t; cg: cg_t);
PROCEDURE call_declare_global(self: declare_global_t; cg: cg_t);
PROCEDURE call_declare_constant(self: declare_constant_t; cg: cg_t);
PROCEDURE call_declare_local(self: declare_local_t; cg: cg_t);
PROCEDURE call_declare_param(self: declare_param_t; cg: cg_t);
PROCEDURE call_declare_temp(self: declare_temp_t; cg: cg_t);
PROCEDURE call_begin_unit(self: begin_unit_t; cg: cg_t);
PROCEDURE call_end_unit(self: end_unit_t; cg: cg_t);
PROCEDURE call_import_unit(self: import_unit_t; cg: cg_t);
PROCEDURE call_export_unit(self: export_unit_t; cg: cg_t);
PROCEDURE call_set_source_file(self: set_source_file_t; cg: cg_t);
PROCEDURE call_set_source_line(self: set_source_line_t; cg: cg_t);
PROCEDURE call_declare_typename(self: declare_typename_t; cg: cg_t);
PROCEDURE call_declare_array(self: declare_array_t; cg: cg_t);
PROCEDURE call_declare_open_array(self: declare_open_array_t; cg: cg_t);
PROCEDURE call_declare_enum(self: declare_enum_t; cg: cg_t);
PROCEDURE call_declare_enum_elt(self: declare_enum_elt_t; cg: cg_t);
PROCEDURE call_declare_packed(self: declare_packed_t; cg: cg_t);
PROCEDURE call_declare_record(self: declare_record_t; cg: cg_t);
PROCEDURE call_declare_field(self: declare_field_t; cg: cg_t);
PROCEDURE call_declare_set(self: declare_set_t; cg: cg_t);
PROCEDURE call_declare_subrange(self: declare_subrange_t; cg: cg_t);
PROCEDURE call_declare_pointer(self: declare_pointer_t; cg: cg_t);
PROCEDURE call_declare_indirect(self: declare_indirect_t; cg: cg_t);
PROCEDURE call_declare_proctype(self: declare_proctype_t; cg: cg_t);
PROCEDURE call_declare_formal(self: declare_formal_t; cg: cg_t);
PROCEDURE call_declare_raises(self: declare_raises_t; cg: cg_t);
PROCEDURE call_declare_object(self: declare_object_t; cg: cg_t);
PROCEDURE call_declare_method(self: declare_method_t; cg: cg_t);
PROCEDURE call_declare_opaque(self: declare_opaque_t; cg: cg_t);
PROCEDURE call_reveal_opaque(self: reveal_opaque_t; cg: cg_t);
PROCEDURE call_declare_exception(self: declare_exception_t; cg: cg_t);
PROCEDURE call_set_runtime_proc(self: set_runtime_proc_t; cg: cg_t);
PROCEDURE call_bind_segment(self: bind_segment_t; cg: cg_t);
PROCEDURE call_free_temp(self: free_temp_t; cg: cg_t);
PROCEDURE call_begin_init(self: begin_init_t; cg: cg_t);
PROCEDURE call_end_init(self: end_init_t; cg: cg_t);
PROCEDURE call_init_int(self: init_int_t; cg: cg_t);
PROCEDURE call_init_proc(self: init_proc_t; cg: cg_t);
PROCEDURE call_init_label(self: init_label_t; cg: cg_t);
PROCEDURE call_init_var(self: init_var_t; cg: cg_t);
PROCEDURE call_init_offset(self: init_offset_t; cg: cg_t);
PROCEDURE call_init_chars(self: init_chars_t; cg: cg_t);
PROCEDURE call_init_float(self: init_float_t; cg: cg_t);
PROCEDURE call_begin_block(self: begin_block_t; cg: cg_t);
PROCEDURE call_end_block(self: end_block_t; cg: cg_t);
PROCEDURE call_note_procedure_origin(self: note_procedure_origin_t; cg: cg_t);
PROCEDURE call_set_label(self: set_label_t; cg: cg_t);
PROCEDURE call_jump(self: jump_t; cg: cg_t);
PROCEDURE call_if_true(self: if_true_t; cg: cg_t);
PROCEDURE call_if_false(self: if_false_t; cg: cg_t);
PROCEDURE call_if_compare(self: if_compare_t; cg: cg_t);
PROCEDURE call_case_jump(self: case_jump_t; cg: cg_t);
PROCEDURE call_exit_proc(self: exit_proc_t; cg: cg_t);
PROCEDURE call_load(self: load_t; cg: cg_t);
PROCEDURE call_store(self: store_t; cg: cg_t);
PROCEDURE call_load_address(self: load_address_t; cg: cg_t);
PROCEDURE call_load_indirect(self: load_indirect_t; cg: cg_t);
PROCEDURE call_store_indirect(self: store_indirect_t; cg: cg_t);
PROCEDURE call_load_nil(self: load_nil_t; cg: cg_t);
PROCEDURE call_load_integer(self: load_integer_t; cg: cg_t);
PROCEDURE call_load_float(self: load_float_t; cg: cg_t);
PROCEDURE call_compare(self: compare_t; cg: cg_t);
PROCEDURE call_add(self: add_t; cg: cg_t);
PROCEDURE call_subtract(self: subtract_t; cg: cg_t);
PROCEDURE call_multiply(self: multiply_t; cg: cg_t);
PROCEDURE call_divide(self: divide_t; cg: cg_t);
PROCEDURE call_div(self: div_t; cg: cg_t);
PROCEDURE call_mod(self: mod_t; cg: cg_t);
PROCEDURE call_negate(self: negate_t; cg: cg_t);
PROCEDURE call_abs(self: abs_t; cg: cg_t);
PROCEDURE call_max(self: max_t; cg: cg_t);
PROCEDURE call_min(self: min_t; cg: cg_t);
PROCEDURE call_cvt_int(self: cvt_int_t; cg: cg_t);
PROCEDURE call_cvt_float(self: cvt_float_t; cg: cg_t);
PROCEDURE call_set_union(self: set_union_t; cg: cg_t);
PROCEDURE call_set_difference(self: set_difference_t; cg: cg_t);
PROCEDURE call_set_intersection(self: set_intersection_t; cg: cg_t);
PROCEDURE call_set_sym_difference(self: set_sym_difference_t; cg: cg_t);
PROCEDURE call_set_member(self: set_member_t; cg: cg_t);
PROCEDURE call_set_compare(self: set_compare_t; cg: cg_t);
PROCEDURE call_set_range(self: set_range_t; cg: cg_t);
PROCEDURE call_set_singleton(self: set_singleton_t; cg: cg_t);
PROCEDURE call_not(self: not_t; cg: cg_t);
PROCEDURE call_and(self: and_t; cg: cg_t);
PROCEDURE call_or(self: or_t; cg: cg_t);
PROCEDURE call_xor(self: xor_t; cg: cg_t);
PROCEDURE call_shift(self: shift_t; cg: cg_t);
PROCEDURE call_shift_left(self: shift_left_t; cg: cg_t);
PROCEDURE call_shift_right(self: shift_right_t; cg: cg_t);
PROCEDURE call_rotate(self: rotate_t; cg: cg_t);
PROCEDURE call_rotate_left(self: rotate_left_t; cg: cg_t);
PROCEDURE call_rotate_right(self: rotate_right_t; cg: cg_t);
PROCEDURE call_widen(self: widen_t; cg: cg_t);
PROCEDURE call_chop(self: chop_t; cg: cg_t);
PROCEDURE call_extract(self: extract_t; cg: cg_t);
PROCEDURE call_extract_n(self: extract_n_t; cg: cg_t);
PROCEDURE call_extract_mn(self: extract_mn_t; cg: cg_t);
PROCEDURE call_insert(self: insert_t; cg: cg_t);
PROCEDURE call_insert_n(self: insert_n_t; cg: cg_t);
PROCEDURE call_insert_mn(self: insert_mn_t; cg: cg_t);
PROCEDURE call_swap(self: swap_t; cg: cg_t);
PROCEDURE call_pop(self: pop_t; cg: cg_t);
PROCEDURE call_copy_n(self: copy_n_t; cg: cg_t);
PROCEDURE call_copy(self: copy_t; cg: cg_t);
PROCEDURE call_zero_n(self: zero_n_t; cg: cg_t);
PROCEDURE call_zero(self: zero_t; cg: cg_t);
PROCEDURE call_loophole(self: loophole_t; cg: cg_t);
PROCEDURE call_abort(self: abort_t; cg: cg_t);
PROCEDURE call_check_nil(self: check_nil_t; cg: cg_t);
PROCEDURE call_check_lo(self: check_lo_t; cg: cg_t);
PROCEDURE call_check_hi(self: check_hi_t; cg: cg_t);
PROCEDURE call_check_range(self: check_range_t; cg: cg_t);
PROCEDURE call_check_index(self: check_index_t; cg: cg_t);
PROCEDURE call_check_eq(self: check_eq_t; cg: cg_t);
PROCEDURE call_add_offset(self: add_offset_t; cg: cg_t);
PROCEDURE call_index_address(self: index_address_t; cg: cg_t);
PROCEDURE call_start_call_direct(self: start_call_direct_t; cg: cg_t);
PROCEDURE call_start_call_indirect(self: start_call_indirect_t; cg: cg_t);
PROCEDURE call_pop_param(self: pop_param_t; cg: cg_t);
PROCEDURE call_pop_struct(self: pop_struct_t; cg: cg_t);
PROCEDURE call_pop_static_link(self: pop_static_link_t; cg: cg_t);
PROCEDURE call_call_direct(self: call_direct_t; cg: cg_t);
PROCEDURE call_call_indirect(self: call_indirect_t; cg: cg_t);
PROCEDURE call_load_procedure(self: load_procedure_t; cg: cg_t);
PROCEDURE call_load_static_link(self: load_static_link_t; cg: cg_t);
PROCEDURE call_comment(self: comment_t; cg: cg_t);
PROCEDURE call_store_ordered(self: store_ordered_t; cg: cg_t);
PROCEDURE call_load_ordered(self: load_ordered_t; cg: cg_t);
PROCEDURE call_exchange(self: exchange_t; cg: cg_t);
PROCEDURE call_compare_exchange(self: compare_exchange_t; cg: cg_t);
PROCEDURE call_fence(self: fence_t; cg: cg_t);
PROCEDURE call_fetch_and_op(self: fetch_and_op_t; cg: cg_t);

END M3CG_MultiPass.
