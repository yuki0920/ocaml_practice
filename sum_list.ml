(* sum_list int : lst -> int : list *)
(* total は これまでの合計を保持しておく関数 *)
let rec sum_list lst =
  let rec total lst = match lst with
    [] -> 0
    | first :: rest -> first + total lst
  in match lst with
    [] -> []
    | first :: rest -> first + total :: rest

let test = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
