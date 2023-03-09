; ---------LLVM DUMP <function descriptor 'impl_new_list.<locals>.imp$2'>---------
; ModuleID = "impl_new_list.<locals>.imp$2"
target triple = "aarch64-unknown-linux-gnu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"

@"_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x" = common global i8* null
define i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x"({i8*, i8*}* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.item", i64 %"arg.allocated")
{
entry:
  %"allocated" = alloca i64
  store i64 0, i64* %"allocated"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".21" = alloca i8*
  store i8* null, i8** %".21"
  %".35" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  %".41" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".41"
  br label %"B0"
B0:
  store i64 %"arg.allocated", i64* %"allocated"
  %".8" = load i64, i64* %"allocated"
  %".9" = icmp slt i64 %".8", 0
  br i1 %".9", label %"B10", label %"B18"
B10:
  %".11" = load i64, i64* %"allocated"
  store i64 0, i64* %"allocated"
  store {i8*, i32, i8*}* @".const.picklebuf.281472764630720", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  store i64 0, i64* %"try_state"
  %".16" = load i64, i64* %"try_state"
  %".17" = icmp ugt i64 %".16", 0
  %".18" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18:
  %".20" = load i64, i64* %"allocated"
  store i8* null, i8** %".21"
  %".24" = call i32 @"numba_list_new"(i8** %".21", i64 8, i64 %".20")
  %".25" = icmp ne i32 %".24", 0
  br i1 %".25", label %"B18.if", label %"B18.endif", !prof !1
B18.if:
  store {i8*, i32, i8*}* @".const.picklebuf.281472764523712", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  %".28" = load i64, i64* %"try_state"
  %".29" = icmp ugt i64 %".28", 0
  %".30" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18.endif:
  %".32" = load i8*, i8** %".21"
  %".33" = load i64, i64* %"allocated"
  store i64 0, i64* %"allocated"
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  %".38" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 0
  %".39" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 1
  call void @"numba_list_set_method_table"(i8* %".32", {i8*, i8*}* %".35")
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".41"
  %".44" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".41", i32 0, i32 1
  store i8* %".32", i8** %".44"
  %".46" = bitcast void (i8*, i64, i8*)* @"_numba_list_dtor" to i8*
  %".47" = call i8* @"NRT_MemInfo_alloc_dtor"(i64 8, i8* %".46")
  %".48" = icmp eq i8* null, %".47"
  br i1 %".48", label %"B18.endif.if", label %"B18.endif.endif", !prof !2
B18.endif.if:
  store {i8*, i32, i8*}* @".const.picklebuf.281472764369600", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  %".51" = load i64, i64* %"try_state"
  %".52" = icmp ugt i64 %".51", 0
  %".53" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18.endif.endif:
  %".55" = call i8* @"NRT_MemInfo_data_fast"(i8* %".47")
  %".56" = bitcast i8* %".55" to i8**
  %".57" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".41", i32 0, i32 1
  %".58" = load i8*, i8** %".57"
  store i8* %".58", i8** %".56"
  %".60" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".41", i32 0, i32 0
  store i8* %".47", i8** %".60"
  %".62" = load {i8*, i8*}, {i8*, i8*}* %".41"
  %"extracted.meminfo" = extractvalue {i8*, i8*} %".62", 0
  %"extracted.data" = extractvalue {i8*, i8*} %".62", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  %"extracted.meminfo.1" = extractvalue {i8*, i8*} %".62", 0
  %"extracted.data.1" = extractvalue {i8*, i8*} %".62", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  %"extracted.meminfo.2" = extractvalue {i8*, i8*} %".62", 0
  %"extracted.data.2" = extractvalue {i8*, i8*} %".62", 1
  %".65" = insertvalue {i8*, i8*} undef, i8* %"extracted.meminfo.2", 0
  %".66" = insertvalue {i8*, i8*} %".65", i8* %"extracted.data.2", 1
  store {i8*, i8*} %".66", {i8*, i8*}* %"retptr"
  ret i32 0
}

@".const.pickledata.281472764630720" = internal constant [148 x i8] c"\80\04\95\89\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c expecting *allocated* to be >= 0\94\85\94\8c\03imp\94\8c7/home/gmarkall/numbadev/numba/numba/typed/listobject.py\94M\89\01\87\94\87\94."
@".const.pickledata.281472764630720.sha1" = internal constant [20 x i8] c"\d2N,l\d1\88n\13\ba\de{\99H\b7)_\84\92\10H"
@".const.picklebuf.281472764630720" = internal constant {i8*, i32, i8*} {i8* bitcast ([148 x i8]* @".const.pickledata.281472764630720" to i8*), i32 148, i8* bitcast ([20 x i8]* @".const.pickledata.281472764630720.sha1" to i8*)}
declare i32 @"numba_list_new"(i8** %".1", i64 %".2", i64 %".3")

@".const.pickledata.281472764523712" = internal constant [71 x i8] c"\80\04\95<\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c\17Failed to allocate list\94\85\94N\87\94."
@".const.pickledata.281472764523712.sha1" = internal constant [20 x i8] c"R\e0\bc]\f4,D\af\a2W\dbx\84`\b2\99\ae\8b\866"
@".const.picklebuf.281472764523712" = internal constant {i8*, i32, i8*} {i8* bitcast ([71 x i8]* @".const.pickledata.281472764523712" to i8*), i32 71, i8* bitcast ([20 x i8]* @".const.pickledata.281472764523712.sha1" to i8*)}
declare void @"numba_list_set_method_table"(i8* %".1", {i8*, i8*}* %".2")

define linkonce_odr void @"_numba_list_dtor"(i8* %".1", i64 %".2", i8* %".3")
{
.5:
  %".6" = bitcast i8* %".1" to i8**
  %".7" = load i8*, i8** %".6"
  call void @"numba_list_free"(i8* %".7")
  ret void
}

declare void @"numba_list_free"(i8* %".1")

declare noalias i8* @"NRT_MemInfo_alloc_dtor"(i64 %".1", i8* %".2")

@".const.pickledata.281472764369600" = internal constant [86 x i8] c"\80\04\95K\00\00\00\00\00\00\00\8c\08builtins\94\8c\0bMemoryError\94\93\94\8c'Allocation failed (probably too large).\94\85\94N\87\94."
@".const.pickledata.281472764369600.sha1" = internal constant [20 x i8] c"\ba(\9d\81\f0\5cp \f3G|\15sH\04\dfe\ab\e2\09"
@".const.picklebuf.281472764369600" = internal constant {i8*, i32, i8*} {i8* bitcast ([86 x i8]* @".const.pickledata.281472764369600" to i8*), i32 86, i8* bitcast ([20 x i8]* @".const.pickledata.281472764369600.sha1" to i8*)}
declare i8* @"NRT_MemInfo_data_fast"(i8* %".1")

declare void @"NRT_incref"(i8* noalias nocapture %".1")

declare void @"NRT_decref"(i8* noalias nocapture %".1")

!0 = !{ i1 1 }
!1 = !{ !"branch_weights", i32 99, i32 1 }
!2 = !{ !"branch_weights", i32 1, i32 99 }
;================================================================================
;-----------------LLVM DUMP <function descriptor '_make_list$1'>-----------------
; ModuleID = "_make_list$1"
target triple = "aarch64-unknown-linux-gnu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"

@"_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x" = common global i8* null
define i32 @"_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.itemty", i64 %"arg.allocated")
{
entry:
  %".6" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".6"
  %"excinfo.1" = alloca {i8*, i32, i8*}*
  store {i8*, i32, i8*}* null, {i8*, i32, i8*}** %"excinfo.1"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".35" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  br label %"B0"
B0:
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".6"
  %".10" = call i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x"({i8*, i8*}* %".6", {i8*, i32, i8*}** %"excinfo.1", i8* %"arg.itemty", i64 %"arg.allocated")
  %".11" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo.1"
  %".12" = icmp eq i32 %".10", 0
  %".13" = icmp eq i32 %".10", -2
  %".14" = icmp eq i32 %".10", -1
  %".15" = icmp eq i32 %".10", -3
  %".16" = or i1 %".12", %".13"
  %".17" = xor i1 %".16", -1
  %".18" = icmp sge i32 %".10", 1
  %".19" = select  i1 %".18", {i8*, i32, i8*}* %".11", {i8*, i32, i8*}* undef
  %".20" = load {i8*, i8*}, {i8*, i8*}* %".6"
  %".21" = extractvalue {i8*, i8*} %".20", 0
  %".22" = extractvalue {i8*, i8*} %".20", 1
  %"inserted.meminfo" = insertvalue {i8*, i8*} undef, i8* %".21", 0
  %"inserted.data" = insertvalue {i8*, i8*} %"inserted.meminfo", i8* %".22", 1
  br i1 %".17", label %"B0.if", label %"B0.endif", !prof !0
B0.if:
  store i64 0, i64* %"try_state"
  %".26" = load i64, i64* %"try_state"
  %".27" = icmp ugt i64 %".26", 0
  %".28" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  store {i8*, i32, i8*}* %".19", {i8*, i32, i8*}** %"excinfo"
  %".30" = xor i1 %".27", -1
  br i1 %".30", label %"B0.if.if", label %"B0.if.endif"
B0.endif:
  %"extracted.meminfo" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  store {i8*, i8*} %"inserted.data", {i8*, i8*}* %".35"
  %".39" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 0
  %".40" = load i8*, i8** %".39"
  %"extracted.meminfo.1" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data.1" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  call void @"NRT_incref"(i8* %".40")
  call void @"NRT_decref"(i8* %".40")
  store i8* %".40", i8** %"retptr"
  ret i32 0
B0.if.if:
  ret i32 %".10"
B0.if.endif:
  br label %"B0.endif"
}

declare i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x"({i8*, i8*}* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.item", i64 %"arg.allocated")

declare void @"NRT_incref"(i8* noalias nocapture %".1")

declare void @"NRT_decref"(i8* noalias nocapture %".1")

!0 = !{ !"branch_weights", i32 1, i32 99 }
;================================================================================
;---------LLVM DUMP <function descriptor 'impl_new_list.<locals>.imp$4'>---------
; ModuleID = "impl_new_list.<locals>.imp$4"
target triple = "aarch64-unknown-linux-gnu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"

@"_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx" = common global i8* null
define i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx"({i8*, i8*}* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.item", i64 %"arg.allocated")
{
entry:
  %"allocated" = alloca i64
  store i64 0, i64* %"allocated"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".21" = alloca i8*
  store i8* null, i8** %".21"
  %".35" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  %".45" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".45"
  br label %"B0"
B0:
  store i64 %"arg.allocated", i64* %"allocated"
  %".8" = load i64, i64* %"allocated"
  %".9" = icmp slt i64 %".8", 0
  br i1 %".9", label %"B10", label %"B18"
B10:
  %".11" = load i64, i64* %"allocated"
  store i64 0, i64* %"allocated"
  store {i8*, i32, i8*}* @".const.picklebuf.281472763643200", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  store i64 0, i64* %"try_state"
  %".16" = load i64, i64* %"try_state"
  %".17" = icmp ugt i64 %".16", 0
  %".18" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18:
  %".20" = load i64, i64* %"allocated"
  store i8* null, i8** %".21"
  %".24" = call i32 @"numba_list_new"(i8** %".21", i64 16, i64 %".20")
  %".25" = icmp ne i32 %".24", 0
  br i1 %".25", label %"B18.if", label %"B18.endif", !prof !1
B18.if:
  store {i8*, i32, i8*}* @".const.picklebuf.281472763575808", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  %".28" = load i64, i64* %"try_state"
  %".29" = icmp ugt i64 %".28", 0
  %".30" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18.endif:
  %".32" = load i8*, i8** %".21"
  %".33" = load i64, i64* %"allocated"
  store i64 0, i64* %"allocated"
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  %".38" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 0
  %".39" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 1
  %".40" = bitcast void ({i8*, i8*}*)* @".numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref" to i8*
  store i8* %".40", i8** %".38"
  %".42" = bitcast void ({i8*, i8*}*)* @".numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref" to i8*
  store i8* %".42", i8** %".39"
  call void @"numba_list_set_method_table"(i8* %".32", {i8*, i8*}* %".35")
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".45"
  %".48" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".45", i32 0, i32 1
  store i8* %".32", i8** %".48"
  %".50" = bitcast void (i8*, i64, i8*)* @"_numba_list_dtor" to i8*
  %".51" = call i8* @"NRT_MemInfo_alloc_dtor"(i64 8, i8* %".50")
  %".52" = icmp eq i8* null, %".51"
  br i1 %".52", label %"B18.endif.if", label %"B18.endif.endif", !prof !2
B18.endif.if:
  store {i8*, i32, i8*}* @".const.picklebuf.281472763285504", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !0
  %".55" = load i64, i64* %"try_state"
  %".56" = icmp ugt i64 %".55", 0
  %".57" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B18.endif.endif:
  %".59" = call i8* @"NRT_MemInfo_data_fast"(i8* %".51")
  %".60" = bitcast i8* %".59" to i8**
  %".61" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".45", i32 0, i32 1
  %".62" = load i8*, i8** %".61"
  store i8* %".62", i8** %".60"
  %".64" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".45", i32 0, i32 0
  store i8* %".51", i8** %".64"
  %".66" = load {i8*, i8*}, {i8*, i8*}* %".45"
  %"extracted.meminfo" = extractvalue {i8*, i8*} %".66", 0
  %"extracted.data" = extractvalue {i8*, i8*} %".66", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  %"extracted.meminfo.1" = extractvalue {i8*, i8*} %".66", 0
  %"extracted.data.1" = extractvalue {i8*, i8*} %".66", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  %"extracted.meminfo.2" = extractvalue {i8*, i8*} %".66", 0
  %"extracted.data.2" = extractvalue {i8*, i8*} %".66", 1
  %".69" = insertvalue {i8*, i8*} undef, i8* %"extracted.meminfo.2", 0
  %".70" = insertvalue {i8*, i8*} %".69", i8* %"extracted.data.2", 1
  store {i8*, i8*} %".70", {i8*, i8*}* %"retptr"
  ret i32 0
}

@".const.pickledata.281472763643200" = internal constant [148 x i8] c"\80\04\95\89\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c expecting *allocated* to be >= 0\94\85\94\8c\03imp\94\8c7/home/gmarkall/numbadev/numba/numba/typed/listobject.py\94M\89\01\87\94\87\94."
@".const.pickledata.281472763643200.sha1" = internal constant [20 x i8] c"\d2N,l\d1\88n\13\ba\de{\99H\b7)_\84\92\10H"
@".const.picklebuf.281472763643200" = internal constant {i8*, i32, i8*} {i8* bitcast ([148 x i8]* @".const.pickledata.281472763643200" to i8*), i32 148, i8* bitcast ([20 x i8]* @".const.pickledata.281472763643200.sha1" to i8*)}
declare i32 @"numba_list_new"(i8** %".1", i64 %".2", i64 %".3")

@".const.pickledata.281472763575808" = internal constant [71 x i8] c"\80\04\95<\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c\17Failed to allocate list\94\85\94N\87\94."
@".const.pickledata.281472763575808.sha1" = internal constant [20 x i8] c"R\e0\bc]\f4,D\af\a2W\dbx\84`\b2\99\ae\8b\866"
@".const.picklebuf.281472763575808" = internal constant {i8*, i32, i8*} {i8* bitcast ([71 x i8]* @".const.pickledata.281472763575808" to i8*), i32 71, i8* bitcast ([20 x i8]* @".const.pickledata.281472763575808.sha1" to i8*)}
declare void @"numba_list_set_method_table"(i8* %".1", {i8*, i8*}* %".2")

define void @".numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref"({i8*, i8*}* %".1")
{
.3:
  %".4" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".1", i32 0, i32 0
  %".5" = load i8*, i8** %".4"
  %".6" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".1", i32 0, i32 1
  %".7" = load i8*, i8** %".6"
  %"inserted.meminfo" = insertvalue {i8*, i8*} undef, i8* %".5", 0
  %"inserted.data" = insertvalue {i8*, i8*} %"inserted.meminfo", i8* %".7", 1
  %"extracted.meminfo" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  ret void
}

declare void @"NRT_incref"(i8* noalias nocapture %".1")

define void @".numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref"({i8*, i8*}* %".1")
{
.3:
  %".4" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".1", i32 0, i32 0
  %".5" = load i8*, i8** %".4"
  %".6" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".1", i32 0, i32 1
  %".7" = load i8*, i8** %".6"
  %"inserted.meminfo" = insertvalue {i8*, i8*} undef, i8* %".5", 0
  %"inserted.data" = insertvalue {i8*, i8*} %"inserted.meminfo", i8* %".7", 1
  %"extracted.meminfo" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo")
  ret void
}

declare void @"NRT_decref"(i8* noalias nocapture %".1")

define linkonce_odr void @"_numba_list_dtor"(i8* %".1", i64 %".2", i8* %".3")
{
.5:
  %".6" = bitcast i8* %".1" to i8**
  %".7" = load i8*, i8** %".6"
  call void @"numba_list_free"(i8* %".7")
  ret void
}

declare void @"numba_list_free"(i8* %".1")

declare noalias i8* @"NRT_MemInfo_alloc_dtor"(i64 %".1", i8* %".2")

@".const.pickledata.281472763285504" = internal constant [86 x i8] c"\80\04\95K\00\00\00\00\00\00\00\8c\08builtins\94\8c\0bMemoryError\94\93\94\8c'Allocation failed (probably too large).\94\85\94N\87\94."
@".const.pickledata.281472763285504.sha1" = internal constant [20 x i8] c"\ba(\9d\81\f0\5cp \f3G|\15sH\04\dfe\ab\e2\09"
@".const.picklebuf.281472763285504" = internal constant {i8*, i32, i8*} {i8* bitcast ([86 x i8]* @".const.pickledata.281472763285504" to i8*), i32 86, i8* bitcast ([20 x i8]* @".const.pickledata.281472763285504.sha1" to i8*)}
declare i8* @"NRT_MemInfo_data_fast"(i8* %".1")

!0 = !{ i1 1 }
!1 = !{ !"branch_weights", i32 99, i32 1 }
!2 = !{ !"branch_weights", i32 1, i32 99 }
;================================================================================
;-----------------LLVM DUMP <function descriptor '_make_list$3'>-----------------
; ModuleID = "_make_list$3"
target triple = "aarch64-unknown-linux-gnu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"

@"_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx" = common global i8* null
define i32 @"_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.itemty", i64 %"arg.allocated")
{
entry:
  %".6" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".6"
  %"excinfo.1" = alloca {i8*, i32, i8*}*
  store {i8*, i32, i8*}* null, {i8*, i32, i8*}** %"excinfo.1"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".35" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  br label %"B0"
B0:
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".6"
  %".10" = call i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx"({i8*, i8*}* %".6", {i8*, i32, i8*}** %"excinfo.1", i8* %"arg.itemty", i64 %"arg.allocated")
  %".11" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo.1"
  %".12" = icmp eq i32 %".10", 0
  %".13" = icmp eq i32 %".10", -2
  %".14" = icmp eq i32 %".10", -1
  %".15" = icmp eq i32 %".10", -3
  %".16" = or i1 %".12", %".13"
  %".17" = xor i1 %".16", -1
  %".18" = icmp sge i32 %".10", 1
  %".19" = select  i1 %".18", {i8*, i32, i8*}* %".11", {i8*, i32, i8*}* undef
  %".20" = load {i8*, i8*}, {i8*, i8*}* %".6"
  %".21" = extractvalue {i8*, i8*} %".20", 0
  %".22" = extractvalue {i8*, i8*} %".20", 1
  %"inserted.meminfo" = insertvalue {i8*, i8*} undef, i8* %".21", 0
  %"inserted.data" = insertvalue {i8*, i8*} %"inserted.meminfo", i8* %".22", 1
  br i1 %".17", label %"B0.if", label %"B0.endif", !prof !0
B0.if:
  store i64 0, i64* %"try_state"
  %".26" = load i64, i64* %"try_state"
  %".27" = icmp ugt i64 %".26", 0
  %".28" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  store {i8*, i32, i8*}* %".19", {i8*, i32, i8*}** %"excinfo"
  %".30" = xor i1 %".27", -1
  br i1 %".30", label %"B0.if.if", label %"B0.if.endif"
B0.endif:
  %"extracted.meminfo" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".35"
  store {i8*, i8*} %"inserted.data", {i8*, i8*}* %".35"
  %".39" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".35", i32 0, i32 0
  %".40" = load i8*, i8** %".39"
  %"extracted.meminfo.1" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data.1" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  call void @"NRT_incref"(i8* %".40")
  call void @"NRT_decref"(i8* %".40")
  store i8* %".40", i8** %"retptr"
  ret i32 0
B0.if.if:
  ret i32 %".10"
B0.if.endif:
  br label %"B0.endif"
}

declare i32 @"_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx"({i8*, i8*}* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.item", i64 %"arg.allocated")

declare void @"NRT_incref"(i8* noalias nocapture %".1")

declare void @"NRT_decref"(i8* noalias nocapture %".1")

!0 = !{ !"branch_weights", i32 1, i32 99 }
;================================================================================
;---------LLVM DUMP <function descriptor 'impl_append.<locals>.impl$6'>----------
; ModuleID = "impl_append.<locals>.impl$6"
target triple = "aarch64-unknown-linux-gnu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"

@"_ZN08NumbaEnv5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d" = common global i8* null
define i32 @"_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.l.0", i8* %"arg.l.1", i8* %"arg.item.0", i8* %"arg.item.1")
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, i8*} undef, i8* %"arg.l.0", 0
  %"inserted.data" = insertvalue {i8*, i8*} %"inserted.meminfo", i8* %"arg.l.1", 1
  %"inserted.meminfo.1" = insertvalue {i8*, i8*} undef, i8* %"arg.item.0", 0
  %"inserted.data.1" = insertvalue {i8*, i8*} %"inserted.meminfo.1", i8* %"arg.item.1", 1
  %".14" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".14"
  %".17" = alloca {i8*, i8*}
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".17"
  %"status" = alloca i32
  store i32 0, i32* %"status"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  br label %"B0"
B0:
  %"extracted.meminfo" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  %"extracted.meminfo.1" = extractvalue {i8*, i8*} %"inserted.data.1", 0
  %"extracted.data.1" = extractvalue {i8*, i8*} %"inserted.data.1", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo.1")
  %"extracted.meminfo.2" = extractvalue {i8*, i8*} %"inserted.data.1", 0
  %"extracted.data.2" = extractvalue {i8*, i8*} %"inserted.data.1", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo.2")
  %"extracted.meminfo.3" = extractvalue {i8*, i8*} %"inserted.data.1", 0
  %"extracted.data.3" = extractvalue {i8*, i8*} %"inserted.data.1", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.3")
  %"extracted.meminfo.4" = extractvalue {i8*, i8*} %"inserted.data.1", 0
  %"extracted.data.4" = extractvalue {i8*, i8*} %"inserted.data.1", 1
  %".12" = insertvalue {i8*, i8*} undef, i8* %"extracted.meminfo.4", 0
  %".13" = insertvalue {i8*, i8*} %".12", i8* %"extracted.data.4", 1
  store {i8*, i8*} %".13", {i8*, i8*}* %".14"
  store {i8*, i8*} zeroinitializer, {i8*, i8*}* %".17"
  store {i8*, i8*} %"inserted.data", {i8*, i8*}* %".17"
  %".21" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".22" = load i8*, i8** %".21"
  %".23" = bitcast {i8*, i8*}* %".14" to i8*
  %".24" = call i32 @"numba_list_append"(i8* %".22", i8* %".23")
  %".26" = load i32, i32* %"status"
  store i32 %".24", i32* %"status"
  %"extracted.meminfo.5" = extractvalue {i8*, i8*} %"inserted.data", 0
  %"extracted.data.5" = extractvalue {i8*, i8*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.5")
  %"extracted.meminfo.6" = extractvalue {i8*, i8*} %"inserted.data.1", 0
  %"extracted.data.6" = extractvalue {i8*, i8*} %"inserted.data.1", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.6")
  %".30" = load i32, i32* %"status"
  %".31" = sext i32 %".30" to i64
  %".32" = icmp eq i64 %".31", 0
  br i1 %".32", label %"B32", label %"B36"
B32:
  %".34" = load i32, i32* %"status"
  store i32 0, i32* %"status"
  store i8* null, i8** %"retptr"
  ret i32 0
B36:
  %".38" = load i32, i32* %"status"
  %".39" = sext i32 %".38" to i64
  %".40" = icmp eq i64 %".39", -5
  br i1 %".40", label %"B46", label %"B54"
B46:
  %".42" = load i32, i32* %"status"
  store i32 0, i32* %"status"
  store {i8*, i32, i8*}* @".const.picklebuf.281472763575552", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !1
  store i64 0, i64* %"try_state"
  %".47" = load i64, i64* %"try_state"
  %".48" = icmp ugt i64 %".47", 0
  %".49" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B54:
  %".51" = load i32, i32* %"status"
  %".52" = sext i32 %".51" to i64
  %".53" = icmp eq i64 %".52", -2
  %".54" = load i32, i32* %"status"
  store i32 0, i32* %"status"
  br i1 %".53", label %"B64", label %"B72"
B64:
  store {i8*, i32, i8*}* @".const.picklebuf.281472763574912", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !1
  %".58" = load i64, i64* %"try_state"
  %".59" = icmp ugt i64 %".58", 0
  %".60" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
B72:
  store {i8*, i32, i8*}* @".const.picklebuf.281472763574528", {i8*, i32, i8*}** %"excinfo", !numba_exception_output !1
  %".63" = load i64, i64* %"try_state"
  %".64" = icmp ugt i64 %".63", 0
  %".65" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1
}

declare void @"NRT_incref"(i8* noalias nocapture %".1")

declare void @"NRT_decref"(i8* noalias nocapture %".1")

declare i32 @"numba_list_append"(i8* %".1", i8* %".2")

@".const.pickledata.281472763575552" = internal constant [132 x i8] c"\80\04\95y\00\00\00\00\00\00\00\8c\08builtins\94\8c\0aValueError\94\93\94\8c\11list is immutable\94\85\94\8c\04impl\94\8c7/home/gmarkall/numbadev/numba/numba/typed/listobject.py\94M]\02\87\94\87\94."
@".const.pickledata.281472763575552.sha1" = internal constant [20 x i8] c";\c2F\a7\bb\80J7\c9,\ef\82\d5\dc\83\ef:$g\f8"
@".const.picklebuf.281472763575552" = internal constant {i8*, i32, i8*} {i8* bitcast ([132 x i8]* @".const.pickledata.281472763575552" to i8*), i32 132, i8* bitcast ([20 x i8]* @".const.pickledata.281472763575552.sha1" to i8*)}
@".const.pickledata.281472763574912" = internal constant [156 x i8] c"\80\04\95\91\00\00\00\00\00\00\00\8c\08builtins\94\8c\0bMemoryError\94\93\94\8c(Unable to allocate memory to append item\94\85\94\8c\04impl\94\8c7/home/gmarkall/numbadev/numba/numba/typed/listobject.py\94M_\02\87\94\87\94."
@".const.pickledata.281472763574912.sha1" = internal constant [20 x i8] c"+\fcv\97G\098\e8\91\9e\fcd\ea\d9C\ca\ed\81\e1b"
@".const.picklebuf.281472763574912" = internal constant {i8*, i32, i8*} {i8* bitcast ([156 x i8]* @".const.pickledata.281472763574912" to i8*), i32 156, i8* bitcast ([20 x i8]* @".const.pickledata.281472763574912.sha1" to i8*)}
@".const.pickledata.281472763574528" = internal constant [148 x i8] c"\80\04\95\89\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c\1flist.append failed unexpectedly\94\85\94\8c\04impl\94\8c7/home/gmarkall/numbadev/numba/numba/typed/listobject.py\94Ma\02\87\94\87\94."
@".const.pickledata.281472763574528.sha1" = internal constant [20 x i8] c"\8at\81'\ff\da\03\e7\b7\1f\d8.\a6`\86\e4\cc\13Y\fb"
@".const.picklebuf.281472763574528" = internal constant {i8*, i32, i8*} {i8* bitcast ([148 x i8]* @".const.pickledata.281472763574528" to i8*), i32 148, i8* bitcast ([20 x i8]* @".const.pickledata.281472763574528.sha1" to i8*)}
!numba_args_may_always_need_nrt = !{ !0 }
!0 = !{ i32 (i8**, {i8*, i32, i8*}**, i8*, i8*, i8*, i8*)* @"_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d" }
!1 = !{ i1 1 }
;================================================================================
;------------------LLVM DUMP <function descriptor '_append$5'>-------------------
