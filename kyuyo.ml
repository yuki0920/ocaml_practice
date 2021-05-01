(* 目的 *)
(* kyuyo : int -> int *)
(* let kyuyo x = 0 *)
let jikyu : int = 950
let kihonkyu : int = 100
let kyuyo x =
  if x = 0
  then 0
  else kihonkyu + x * jikyu
let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 29500
