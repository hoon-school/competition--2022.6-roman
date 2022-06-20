::
::  %say the product of the conversion to/from a Roman numeral expression
::
::    The direction of conversion is determined by the type of the input.
::    tape -> Roman numeral expression to a quantity
::    @ud -> quantity to a Roman numeral expression
::
/+  *roman
::
:-  %say
::  caution - the type union in this spec is sensitive to the order of
::  its arguments: ?(tape @ud) results in fish-loop
::
|=  [* [value=?(@ud tape) ~] *]
^-  [%noun ?(@ud tape)]
:-  %noun
?:  ?=(@ud value)
  (yield value)
(parse value)

