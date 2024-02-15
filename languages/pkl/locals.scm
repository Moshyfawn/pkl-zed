; Scopes

(module) @local.scope
(clazz) @local.scope
(classMethod) @local.scope
(objectMethod) @local.scope
(functionLiteral) @local.scope
(objectBody) @local.scope
(letExpr) @local.scope
(forGenerator) @local.scope

; Definitions

(clazz (identifier) @local.definition)

(typeAlias
  (identifier) @local.definition)

(classMethod (methodHeader (identifier)) @local.definition)

(objectMethod
  (identifier) @local.definition)

(classProperty
  (methodHeader (identifier)) @local.definition)

(objectProperty
  (methodHeader (identifier)) @local.definition)

(typedIdentifier
  (identifier) @local.definition)

; References

(variableExpr
  (identifier) @local.reference)
