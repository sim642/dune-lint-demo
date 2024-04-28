let detect_static_add = object
  inherit [Ppxlib.Driver.Lint_error.t list] Ppxlib.Ast_traverse.fold as super

  method! expression e acc =
    match e with
    | { pexp_desc =
          Pexp_apply
            ( {pexp_desc = Pexp_ident {txt = Lident "+"; _}; _}
            , [ (Nolabel, {pexp_desc = Pexp_constant (Pconst_integer (a, None)); _})
              ; (Nolabel, {pexp_desc = Pexp_constant (Pconst_integer (b, None)); _})
              ]
            )
      ; pexp_loc = loc
      ; _
      } ->
      let sum = int_of_string a + int_of_string b in
      let repl = string_of_int sum in
      Ppxlib.Driver.Lint_error.of_string loc repl :: acc
    | _ -> super#expression e acc
end

let lint_impl s =
  detect_static_add#structure s []

let () =
  Ppxlib.Driver.register_transformation
    "detect_static_add"
    ~lint_impl
