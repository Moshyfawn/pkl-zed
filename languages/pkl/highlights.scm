; Synced from https://raw.githubusercontent.com/apple/tree-sitter-pkl/main/queries/highlights.scm (Apache-2.0)

; Types

(clazz (identifier) @type)
(typeAlias (identifier) @type)
((identifier) @type
 (#match? @type "^[A-Z]"))

(typeArgumentList
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

; Method definitions

(classMethod (methodHeader (identifier)) @function)
(objectMethod (methodHeader (identifier)) @function)

; Identifiers

(classProperty (identifier) @property)
(objectProperty (identifier) @property)

(parameterList (typedIdentifier (identifier) @variable))
(objectBodyParameters (typedIdentifier (identifier) @variable))

(identifier) @variable

; Literals

(stringConstant) @string
(slStringLiteralExpr) @string
(mlStringLiteralExpr) @string

(escapeSequence) @string.escape

(intLiteralExpr) @number
(floatLiteralExpr) @number

(stringInterpolation
  "\\(" @punctuation.special
  ")" @punctuation.special) @embedded

(stringInterpolation
 "\\#(" @punctuation.special
 ")" @punctuation.special) @embedded

(stringInterpolation
  "\\##(" @punctuation.special
  ")" @punctuation.special) @embedded

(lineComment) @comment
(blockComment) @comment
(docComment) @comment.doc
(shebangComment) @comment

; Operators

"??" @operator
"@"  @attribute
"="  @operator
"<"  @operator
">"  @operator
"!"  @operator
"==" @operator
"!=" @operator
"<=" @operator
">=" @operator
"&&" @operator
"||" @operator
"+"  @operator
"-"  @operator
"**" @operator
"*"  @operator
"/"  @operator
"~/" @operator
"%"  @operator
"|>" @operator

"," @punctuation.delimiter
":" @punctuation.delimiter
"." @punctuation.delimiter
"?." @punctuation.delimiter

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

; Keywords

"abstract" @keyword
"amends" @keyword
"as" @keyword
"class" @keyword
"else" @keyword
"extends" @keyword
"external" @keyword
(falseLiteralExpr) @boolean
"for" @keyword
"function" @keyword
"hidden" @keyword
"if" @keyword
(importExpr "import" @function)
(importExpr "import*" @function)
"import" @keyword
"import*" @keyword
"in" @keyword
"is" @keyword
"let" @keyword
"local" @keyword
(moduleExpr "module" @type)
"module" @keyword
"new" @keyword
(nullLiteralExpr) @constant
"open" @keyword
"out" @keyword
(outerExpr) @variable.special
"read" @function
"read?" @function
"read*" @function
"super" @variable.special
(thisExpr) @variable.special
"throw" @function
"trace" @function
(trueLiteralExpr) @boolean
"typealias" @keyword
"when" @keyword

; Zed additions (not in upstream)

"!!" @operator
"->" @operator
"|"  @operator
"?"  @operator
"..." @punctuation
"...?" @punctuation
"const" @keyword
"fixed" @keyword

(nothingType) @type
(unknownType) @type
