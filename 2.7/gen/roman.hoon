/+  *roman
:-  %say
|=  [* [input=?(@ud tape) ~] *]
:-  %noun
^-  ?(@ud tape)
?^  input
  (parse input)
(yield `@ud`input)

