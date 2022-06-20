::  +roman: given arabic or roman numeral, produce the opposite
::
::    +roman @ud
::      given arabic numeral, generate roman equivalent
::    +roman tape
::      given roman numeral, generate arabic equivalent
::
/+  *roman
::
:-  %say
|=  [* [i=?(@ud tape) ~] ~]
:-  %noun
^-  ?(@ud tape)
?-  i
  ~   (parse i)
  @   (yield i)
  ^   (parse i)
==

