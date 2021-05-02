type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

let hyouji ekimei = match ekimei with
  {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} ->
    shozoku ^ ", " ^ kanji ^ "（" ^ kana ^ "）"

let hyouji_test = hyouji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myougadani"; shozoku = "丸ノ内線"} = "丸ノ内線, 茗荷谷（みょうがだに）"

type ekikan_t = {
  kiten : string;
  syuten : string;
  keiyu : string;
  kyori : float;
  jikan : int;
}
