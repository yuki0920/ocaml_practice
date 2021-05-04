(* sum_list int : lst -> int : list *)
(* total は これまでの合計を保持しておく関数 *)
let sum_list lst =
  let rec total lst accum = match lst with
    [] -> []
    | first :: rest -> first + accum :: total rest (first + accum)
  in total lst 0

let test = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
