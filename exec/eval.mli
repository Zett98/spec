open Values
open Instance

exception Link of Source.region * string
exception Trap of Source.region * string
exception Crash of Source.region * string
exception Exhaustion of Source.region * string

val init :
  int ref -> Ast.module_ -> extern list -> module_inst (* raises Link, Trap *)

val invoke : int ref -> func_inst -> value list -> value list (* raises Trap *)
