::  roman: Convert Roman numerals to Arabic numbers, or vice versa.
::
/+  *roman
:-  %say
|=  [* [arabic-or-roman=$@(@ud tape) ~] ~]
:-  %noun
::  if, arabic-or-roman is null
::
?~  arabic-or-roman
  ::  then, produce zero
  0
::  else, if, arabic-or-roman is a cell
::
?^  arabic-or-roman
  ::  then, parse the tape of roman numerals
  ::
  (parse arabic-or-roman)
::  else, produce a roman numeral from the arabic number
::
(yield arabic-or-roman)

