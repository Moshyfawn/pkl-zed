(clazz) @class.around
(clazz (classBody) @class.inside)
(classMethod) @function.around
(classMethod (methodHeader) @function.inside)
(objectMethod) @function.around
(objectMethod (methodHeader) @function.inside)
(functionLiteralExpr) @function.around
(lineComment) @comment.around
(blockComment) @comment.around
(docComment) @comment.around
