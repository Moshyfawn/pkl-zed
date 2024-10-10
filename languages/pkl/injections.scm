((unqualifiedAccessExpr
  (identifier) @_name
  (argumentList (slStringLiteralExpr) @content))
  (#eq? @_name "Regex")
  (#set! injection.language "regex"))
