(* 目的 鶴と亀の数の合計と足の和の合計を与えられたら鶴の足の本数を返す *)
(* tsurukame : int -> :int -> int  *)
let tsurukame sum legs = sum * 2 - legs / 2
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 2 6 = 1
