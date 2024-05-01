  $ dune build @lint

Outputs multiple errors during build.
Although OCaml compiler seems to still only print one.

  $ dune build
  File "src/add.ml", line 1, characters 33-38:
  1 | let () = Printf.printf "%d\n" @@ 1 + 2
                                       ^^^^^
  Error: 3
  [1]

