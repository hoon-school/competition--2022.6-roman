::
::  A library for parsing and producing Roman numeral expressions.
::
=<
::
|%
::  +parse: produce the value of a Roman numeral expression
::
++  parse
  |=  expression=tape
  ^-  @ud
  %+  scan
    (cass expression)
  %-  full
  ;~  (comp |=([a=@ud b=@ud] (add a b)))
    (cook roman-value-unit (punt (numeral-rule %m)))
    (cook roman-value-unit (punt (numeral-rule %d)))
    (cook roman-value-unit (punt (numeral-rule %c)))
    (cook roman-value-unit (punt (numeral-rule %l)))
    (cook roman-value-unit (punt (numeral-rule %x)))
    (cook roman-value-unit (punt (numeral-rule %v)))
    (cook roman-value-unit (punt (numeral-rule %i)))
  ==
::  +yield: produce the Roman numeral for a given value
::
++  yield
  |=  n=@ud
  ^-  tape
  ?>  (gte n 1)
  ::
  =/  options  numerals-and-subtractives
  =/  final  *tape
  |-
  ?:  =(n 0)
    final
  ?~  options
    !!
  =/  roman=tape  -.i.options
  =/  value=@ud  +.i.options
  =/  expression=tape  (zing (reap (div n value) roman))
  %=  $
    n        (mod n value)
    options  t.options
    final    (weld final expression)
  ==
--
::
|%  
::  +numeral-rule: match valid sequences that begin with the given numeral
::
++  numeral-rule
  |=  numeral=?(%i %v %x %l %c %d %m)
  ?-  numeral
    %i  ;~(pose (jest 'iiii') (jest 'iii') (jest 'ii') (jest 'iv') (jest 'ix') (just 'i'))
    %v  (just 'v')
    %x  ;~(pose (jest 'xxx') (jest 'xx') (jest 'xc') (jest 'xl') (just 'x'))
    %l  (just 'l')
    %c  ;~(pose (jest 'ccc') (jest 'cc') (jest 'cm') (jest 'cd') (just 'c'))
    %d  (just 'd')
    %m  ;~(pose (jest 'mmm') (jest 'mm') (just 'm'))
  ==
::  +roman-value-unit: 0 if the unit is empty otherwise ++roman-value
::
++  roman-value-unit
  |=  roman=(unit @t)
  ^-  @ud
  ?~  roman
    0
  (roman-value (trip u.roman))
::  +roman-value: produce the value of a simple expression
::
::    "Simple" here means a single numeral, an additive series or 
::    a subtractive pair. ex: "i", "ii", "iv" but not "xi"
:: 
::    Caution: this will produce a value for an invalid Roman numeral and
::    a wrong value for "complex" expressions.
::
++  roman-value
  |=  roman=tape
  ^-  @ud
  ?~  roman
    !!
  ::
  =/  value-map  (malt numerals-and-subtractives)
  %+  fall
    ::  roman is a single numeral or a subtractive
    ::
    (~(get by value-map) roman)
  ::  roman is an additive series
  ::
  %+  mul
    (lent roman)
  (~(got by value-map) (trip i.roman))
::  +numerals-and-subtractives: a list of pairs of single numerals 
::  and valid subtractive pairs in descending order of value
::
++  numerals-and-subtractives
  ^-  (list [tape @ud])
  :~  ["m" 1.000]
      ["cm" 900]
      ["d" 500]
      ["cd" 400]
      ["c" 100]
      ["xc" 90]
      ["l" 50]
      ["xl" 40]
      ["x" 10]
      ["ix" 9]
      ["v" 5]
      ["iv" 4]
      ["i" 1]
  ==
--

