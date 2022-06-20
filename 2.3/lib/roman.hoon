::  Convert Roman numerals to Arabic numbers, or vice versa.
::
|%
::  +parse: accept a tape containing a roman numeral and produce the number
::
++  parse
  |=  numeral=tape  ^-  @ud
  ::  (the sum of arabic numbers that are found in the roman numeral)
  ::
  |^  (roll (scan (cuss numeral) (star as-arabic)) add)
  ::  +as-arabic: convert numeral characters into their numeric value
  ::
  ++  as-arabic
    ;~  pose
      (cold 4 (jest 'IV'))
      (cold 9 (jest 'IX'))
      (cold 1 (just 'I'))
      (cold 5 (just 'V'))
      (cold 40 (jest 'XL'))
      (cold 90 (jest 'XC'))
      (cold 10 (just 'X'))
      (cold 50 (just 'L'))
      (cold 400 (jest 'CD'))
      (cold 900 (jest 'CM'))
      (cold 100 (just 'C'))
      (cold 500 (just 'D'))
      (cold 1.000 (just 'M'))
    ==
  --
::  +yield: accept a decimal number and produce the corresponding roman numeral
::
++  yield
  |=  number=@ud  ^-  tape
  :: if, number is zero
  ::
  ?:  =(0 number)
    ::  then, end the list (i.e. conclude the tape)
    ::
    ~
  ::  else, if, number is one-thousand or greater
  ::
  ?:  (gte number 1.000)
    ::  then, append "m", and recurse subtracting one-thousand
    ::
    :-  'm'
    $(number (sub number 1.000))
  ::  else, if, number is nine-hundred or greater
  ::
  ?:  (gte number 900)
    ::  then, append "cm", and recurse subtracting nine-hundred
    ::
    :-  'c'  :-  'm'
    $(number (sub number 900))
  ::  else, if, number is five-hundred or greater
  ::
  ?:  (gte number 500)
    ::  then, append "d", and recurse subtracting five-hundred
    ::
    :-  'd'
    $(number (sub number 500))
  ::  else, if, number is four-hundred or greater
  ::
  ?:  (gte number 400)
    ::  then, append "cd", and recurse subtracting four-hundred
    ::
    :-  'c'  :-  'd'
    $(number (sub number 400))
  ::  else, if, number is one-hundred or greater
  ::
  ?:  (gte number 100)
    ::  then, append "c", and recurse subtracting one-hundred
    ::
    :-  'c'
    $(number (sub number 100))
  ::  else, if, number is ninety or greater
  ::
  ?:  (gte number 90)
    ::  then, append "xc", and recurse subtracting ninety
    ::
    :-  'x'  :-  'c'
    $(number (sub number 90))
  ::  else, if, number is fifty or greater
  ::
  ?:  (gte number 50)
    ::  then, append "l", and recurse subtracting fifty
    ::
    :-  'l'
    $(number (sub number 50))
  ::  else, if, number is forty or greater
  ::
  ?:  (gte number 40)
    ::  then, append "xl", and recurse subtracting forty
    ::
    :-  'x'  :-  'l'
    $(number (sub number 40))
  ::  else, if, number is ten or greater
  ::
  ?:  (gte number 10)
    ::  then, append "x", and recurse subtracting ten
    ::
    :-  'x'
    $(number (sub number 10))
  ::  else, if, number is nine or greater
  ::
  ?:  (gte number 9)
    ::  then, append "ix", and recurse subtracting nine
    ::
    :-  'i'  :-  'x'
    $(number (sub number 9))
  ::  else, if, number is five or greater
  ::
  ?:  (gte number 5)
    ::  then, append "v", and recurse subtracting five
    ::
    :-  'v'
    $(number (sub number 5))
  ::  else, if, number is four or greater
  ::
  ?:  (gte number 4)
    ::  then, append "iv", and recurse subtracting four
    ::
    :-  'i'  :-  'v'
    $(number (sub number 4))
  ::  else, append "i", and recurse subtracting one
  ::
  :-('i' $(number (sub number 1)))
--

