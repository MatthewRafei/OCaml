let rec size lst =
    match lst with
    | [] -> 0
    | hd :: tl -> 1 + size tl

(*
[1;2;3;4;5]
first call: 1 + size [2;3;4;5]
second call: 1 + size [3;4;5]
third call: 1 + size [4;5]
fourth call: 1 + size [5]
fifth call: 1 + size []
sixth call: 0
0 + 1 + 1 + 1 + 1 + 1 = 5
*)
let () =
    let lst = [1;2;3;4;5;6] in
    Printf.printf "%d\n" (size lst)
