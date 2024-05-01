  $ dune build @lint

Doesn't work.
Promotable corrections are not allowed during normal preprocessing.

  $ dune build
  File "src/add.ml", line 1, characters 0-0:
  Error: Files _build/default/src/add.ml and
  _build/default/src/add.ml.ppx-corrected differ.
  [1]
