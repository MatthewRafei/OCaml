(*
Given some list l and some target t,
  return two optional indices (Some (i, j)) such that l[i] + l[j] = t,
  or None if no such indices exist.
*)
let rec two_sum lst target  =

    let rec compare cur rest (i : int) =
        match rest with
        | [] -> None
        | hd :: tl when cur + hd = target -> i
        | hd :: tl -> compare hd tl (i+1)
    in

    match lst with
    | [] -> None
    | hd :: tl -> compare hd tl 0

(* Actual solution *)
(* let twosum lst t =
  let rec compare cur rest i =
    match rest with
    | [] -> None
    | hd :: tl when cur + hd = t -> Some i
    | _ :: tl -> compare cur tl (i + 1) in

  let rec aux lst i =
    match lst with
    | [] -> None
    | hd :: tl ->
       (match compare hd tl (i + 1) with
        | Some j -> Some (i, j)
        | None -> aux tl (i + 1)) in

  aux lst 0*)

(*
let rec count_evens lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | hd :: tl when hd % 2 = 0 -> aux tl (acc+1)
    | hd :: tl -> aux tl acc in
  aux lst 0

let rec evens_only lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | hd :: tl when hd % 2 = 0 -> aux tl (acc @ [hd])
    | hd :: tl -> aux tl acc in
  aux lst []

let rec evens_only' lst =
  match lst with
  | [] -> []
  | hd :: tl when hd % 2 = 0 -> [hd] @ evens_only' tl
  | hd :: tl -> evens_only' tl
*)

(*
let lst = [1;2;3]

1st : lst = [2;3]
2nd : lst = [3], some_new_list = [2]
3rd : lst = [0], some_new_list = [2]


*)

(*
def two_sum(lst):
  for i in range(0..len(lst)):
    for j in range(i+1..len(lst)):
      if lst[i] == lst[j]:
        return (i, j)
  return none
*)

let () =
    let lst = [1;2;3;4;5]
    and t = 5 in
    match two_sum lst t with
    | Some (x, y) -> Printf.printf "(%d, %d)\n" x y
    | None -> print_endline "no such indices exist"
