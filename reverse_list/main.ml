open Printf

let rec rev (lst : 'a list) : int list =
  match lst with
  | [] -> []
  | hd :: tl -> rev tl @ [hd]

let rec sum (lst : int list) : int =
  match lst with
    | [] -> 0
    | hd :: tl -> hd + sum tl

let () =
  let lst = [1;2;3;4;5] in
  let _ = List.iter (fun k -> printf "%d " k) @@ rev lst in
  print_endline ""
