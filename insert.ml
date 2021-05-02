let rec insert lst n = match lst with
  [] -> []
  | first :: rest ->
    if n >= first
    then insert n::first::rest n
    else insert rest n

let test1 = insert [] 1 = [1]
let test2 = insert [1, 3] 2 = [1, 2, 3]
let test3 = insert [1, 3, 4, 7, 8] 5 = [1, 3, 4, 5, 7, 8]
