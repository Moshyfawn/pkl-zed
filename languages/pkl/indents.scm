; Based on apple/pkl-neovim (Apache-2.0), adapted for Zed

[
  (objectBody)
  (classBody)
  (ifExpr)
  (mlStringLiteralExpr)
  (importClause)
  (importGlobClause)
] @indent

(mlStringLiteralExpr "\"\"\"" @end)

(_ "{" "}" @end) @indent
(_ "(" ")" @end) @indent
(_ "[" "]" @end) @indent

"else" @outdent
"}" @outdent
"]" @outdent
")" @outdent
