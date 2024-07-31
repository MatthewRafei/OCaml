let rec last lst =
    match lst with
    | [] -> None (* -> 'a option *)
    | [x] -> Some x (* -> 'a option *)
    | hd :: tl -> last tl (* -> 'a option *)

let () =
    let lst = [1;2;3;4;5;6;7] in
    match last lst with
    | Some k -> Printf.printf "%d\n" k
    | None -> print_endline "the list is empty"
