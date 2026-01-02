; Types

(clazz (identifier) @type)
(typeAlias (identifier) @type)
((identifier) @type
 (#match? @type "^[A-Z]"))

(typeArgumentList
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

(declaredType (qualifiedIdentifier (identifier) @type))

; Method calls

(unqualifiedAccessExpr
  (identifier) @method)

; Method definitions

(classMethod (methodHeader (identifier)) @method)
(objectMethod (methodHeader (identifier)) @method)

; Identifiers

(classProperty (identifier) @property)
(objectProperty (identifier) @property)

(parameterList (typedIdentifier (identifier) @parameter))
(objectBodyParameters (typedIdentifier (identifier) @parameter))

(forGenerator (typedIdentifier (identifier) @variable))
(letExpr (typedIdentifier (identifier) @variable))
(importClause (identifier) @variable)

; Literals

[
  (stringConstant)
  (slStringLiteralExpr)
  (mlStringLiteralExpr)
] @string

(escapeSequence) @string.escape

[
  (intLiteralExpr)
  (floatLiteralExpr)
] @number

(stringInterpolation
  "\\(" @punctuation.special
  ")" @punctuation.special) @none

(stringInterpolation
 "\\#(" @punctuation.special
 ")" @punctuation.special) @none

(stringInterpolation
  "\\##(" @punctuation.special
  ")" @punctuation.special) @none

[
  (lineComment)
  (blockComment)
  (docComment)
] @comment

"@" @attribute

[
  "??"
  "="
  "<"
  ">"
  "!"
  "=="
  "!="
  "<="
  ">="
  "&&"
  "||"
  "+"
  "-"
  "**"
  "*"
  "/"
  "~/"
  "%"
  "|>"
] @operator

[
  "?"
  "|"
  "->"
] @operator.type

[
  "..."
  "...?"
] @punctuation

[
  ","
  ":"
  "."
  "?."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; Keywords

(importExpr "import" @include)
(importClause "import" @include)
(importGlobClause "import*" @include)
(importClause "as" @include)

"is" @keyword.operator

(nullLiteralExpr) @constant.builtin

(moduleExpr "module" @type.builtin)

[
  "nothing"
  "unknown"
] @type.builtin

[
  (falseLiteralExpr)
  (trueLiteralExpr)
] @boolean

[
  "for"
  "in"
] @repeat

[
  (outerExpr)
  "super"
  (thisExpr)
] @variable.builtin

[
  "read"
  "read?"
  "read*"
  "throw"
  "trace"
] @function.builtin

[
  "else"
  "if"
  "when"
] @conditional

[
  "abstract"
  "amends"
  "as"
  "class"
  "extends"
  "external"
  "function"
  "hidden"
  "let"
  "local"
  "module"
  "new"
  "open"
  "out"
  "typealias"
] @keyword
