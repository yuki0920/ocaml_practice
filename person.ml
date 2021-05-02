type person_t = {
  height : int;
  weight : int;
  birth_date : string;
  blood_type : string;
}

let person = {
  height = 160;
  weight = 60;
  birth_date = "20210401";
  blood_type = "O";
}

let to_str person = match person with
  {height = h; weight = w; birth_date = b; blood_type = bl} ->
    "血液型は" ^ bl ^ "型です"

let test = to_str person = "血液型はO型です"
