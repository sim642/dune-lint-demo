(lint) stanzas don't run by default (with @default alias).

  $ dune build

Must build @lint alias to run them.

  $ dune build @lint
  File "src/add.ml", line 1, characters 0-0:
  Error: Files _build/default/src/add.ml and
  _build/default/src/add.ml.lint-corrected differ.
  [1]

Corrections can then be promoted.

  $ dune promote
  Promoting _build/default/src/add.ml.lint-corrected to src/add.ml.

  $ cat src/add.ml
  let () = Printf.printf "%d\n" @@ 3
