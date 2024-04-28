The lint alias will run preprocessing actions listed under (lint). It also
defines corrections that may be promoted.

  $ dune build @lint
  File "src/add.ml", line 1, characters 0-0:
  Error: Files _build/default/src/add.ml and
  _build/default/src/add.ml.lint-corrected differ.
  [1]

  $ dune promote
  Promoting _build/default/src/add.ml.lint-corrected to src/add.ml.

  $ cat src/add.ml
  let () = Printf.printf "%d\n" @@ 3
