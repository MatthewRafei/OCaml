let rec nth (lst : 'a list) (i : int) : 'a option =
    match lst with
    | [] -> None
    | hd :: _ when i = 0 -> Some hd
    | hd :: tl -> nth tl (i-1)

(*
1st : tl = 2,3, i = 0
2nd : tl = 3, hd = 2, i = 0
*)


let () =
    let lst = [1;2;3]
    and index = 1 in
    match nth lst index with
    | Some k -> Printf.printf "%d\n" k
    | None -> print_endline "index is not valid"
