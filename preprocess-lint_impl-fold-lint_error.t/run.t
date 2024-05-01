  $ dune build @lint

Outputs multiple preprocessor warnings during build.

  $ dune build
  File "src/add.ml", line 1, characters 33-38:
  1 | let () = Printf.printf "%d\n" @@ 1 + 2
                                       ^^^^^
  Error (warning 22 [preprocessor]): 3
  File "src/add.ml", line 2, characters 33-38:
  2 | let () = Printf.printf "%d\n" @@ 3 + 4
                                       ^^^^^
  Error (warning 22 [preprocessor]): 7
  [1]

