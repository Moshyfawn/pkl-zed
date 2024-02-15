(
  ((methodCallExpr (identifier) @methodName (argumentList (slStringLiteral) @injection.content))
    (set! injection.language "regex"))
  (eq? @methodName "Regex"))
