; Types

(clazz (identifier) @type)
(typeAlias (identifier) @type)
((identifier) @type
 (#match? @type "^[A-Z]"))

(typeArgumentList
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

(typeParameter (identifier) @type)
(typeAnnotation (type (qualifiedIdentifier) @type))
(newExpr (type (qualifiedIdentifier) @type))

; Method calls

(methodCallExpr
  (identifier) @method)

; Method definitions

(classMethod (methodHeader (identifier)) @method)
(objectMethod (methodHeader (identifier)) @method)

; Identifiers

(classProperty (identifier) @property)
(objectProperty (identifier) @property)

(parameterList (typedIdentifier (identifier) @parameter))
(objectBodyParameters (typedIdentifier (identifier) @parameter))

(annotation (qualifiedIdentifier) @attribute)
(forGenerator (typedIdentifier (identifier) @variable))
(letExpr (typedIdentifier (identifier) @variable))
(variableExpr (identifier) @variable)
(importClause (identifier) @variable)
(variableObjectLiteral (identifier) @variable)
(propertyCallExpr (identifier) @variable)

; Literals

[
  (stringConstant)
  (slStringLiteral)
  (mlStringLiteral)
] @string

(escapeSequence) @string.escape

[
  (intLiteral)
  (floatLiteral)
] @number

(interpolationExpr
  "\\(" @punctuation.special
  ")" @punctuation.special) @none

(interpolationExpr
 "\\#(" @punctuation.special
 ")" @punctuation.special) @none

(interpolationExpr
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
(importGlobExpr "import*" @include)
(importClause "import" @include)
(importGlobClause "import*" @include)
(importClause "as" @include)

"is" @keyword.operator

(nullLiteral) @constant.builtin

(moduleExpr "module" @type.builtin)

[
  "nothing"
  "unknown"
] @type.builtin

[
  (falseLiteral)
  (trueLiteral)
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