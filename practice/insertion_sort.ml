let rec insert lst num = match lst with
  [] -> [num]
  | first :: rest ->
    if first > num
    (* 下記のように異常の場合は問題を小さくしない場合もある *)
    (* 挿入ソートなので num を一番始めに移動する *)
    then num :: lst
    else first :: insert rest num

let test_insert1 = insert [] 1 = [1]
let test_insert2 = insert [1]  2 = [1; 2]
let test_insert3 = insert [1; 3]  2 = [1; 2; 3]
let test_insert4 = insert [1; 2; 4] 3 = [1; 2; 3; 4]
let test_insert4 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]

let rec insertion_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (insertion_sort rest) first

let test_insertion_sort1 = insertion_sort [1] = [1]
let test_insertion_sort2 = insertion_sort [1; 2] = [1; 2]
let test_insertion_sort3 = insertion_sort [2; 1] = [1; 2]
let test_insertion_sort4 = insertion_sort [2; 3; 1] = [1; 2; 3]
let test_insertion_sort5 = insertion_sort [3; 2; 1] = [1; 2; 3]
