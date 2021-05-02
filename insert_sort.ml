(* 目的: リストを受け取り並び替えたリストを返す *)
(* int list -> int -> int list *)
let rec insert_sort lst = match lst with
  [] -> []
  | first :: rest -> first::rest

let test1 = insert_sort [] = []
let test2 = insert_sort [1] = [1]
let test3 = insert_sort [1; 2] = [1; 2]
let test4 = insert_sort [2; 1] = [1; 2]
let test5 = insert_sort [3; 2; 1] = [1; 2; 3]
