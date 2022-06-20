/+  roman
:-  %say
|=  [* [input=$@(@ud tape) ~] *]
:-  %noun
?@(input (yield:roman `@ud`input) (parse:roman `tape`input))

