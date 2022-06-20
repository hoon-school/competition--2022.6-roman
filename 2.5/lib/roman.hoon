::  roman: roman numeral conversion library
::
=<
::  public core
|%
::  +parse: given a roman numeral, produce the equivalent arabic numeral
::
++  parse
  |=  roman=tape
  ^-  @ud
  ~|  'Input numeral has invalid syntax.'
  ?>  !=((lent roman) 0)
  |^  %+  scan  (cass roman)
      %+  cook  sum-up
      ;~  plug
        (parse-just (pow 10 3) 0 3)
        (parse-base (pow 10 2) 3)
        (parse-base (pow 10 1) 3)
        (parse-base (pow 10 0) 4)
        (easy ~)
      ==
  ::  +sum-up: sum up the contents of a given list
  ::
  ++  sum-up
    |=  l=(list @)
    (roll l add)
  ::  +parse-just: parse just the roman equivalent of given arabic [range] times
  ::
  ++  parse-just
    |=  [value=@ud range=[@ud @ud]]
    %+  cook  sum-up
    %+  stun  range
    %+  cold  value
    (jest (~(got by glyph-map) value))
  ::  +parse-base: parse the roman base of given base-10 arabic [0, reps] times
  ::
  ::    This function parses the *contextualized* roman base equivalent of a
  ::    given base-10 arabic value up to a given number of times. Crucially,
  ::    this applies roman numeral contextual rules, such as numeral ordering
  ::    and subtraction rules (e.g. iv=4, ix=9, id=invalid, etc.), to the given
  ::    base. In concrete terms, this means enforcing the following regex:
  ::
  ::    ```
  ::    R: Reps | N: Next (B*10)
  ::    B: Base | H: Half (B*5)
  ::
  ::    (BN|BH|H?B{0,R})
  ::    ```
  ::
  ++  parse-base
    |=  [base=@ud reps=@ud]
    =+  next=(mul base 10)
    =+  half=(mul base 5)
    ;~  pose
      (parse-just (sub next base) 1 1)
      (parse-just (sub half base) 1 1)
      %+  cook  sum-up
      ;~  plug
        (parse-just half 0 1)
        (parse-just base 0 reps)
        (easy ~)
      ==
      (easy 0)
    ==
  --
::  +yield: given an arabic numeral, produce the equivalent roman numeral
::
++  yield
  |=  arabic=@ud
  ^-  tape
  ~|  'Input value is out of range (valid range: [1, 3.999]).'
  ?>  &((gth arabic 0) (lth arabic 4.000))
  =<  +>
  %^  spin  glyph-list  [arabic ""]
  |=  [n=[@ud @t] a=[@ud tape]]
  ?:  (lth -.a -.n)  [n a]
  $(a [(sub -.a -.n) (weld +.a (trip +.n))])
--
::  private core
|%
::  +glyph-map: map of arabic glyphs to their roman equivalents
::
++  glyph-map
  ^-  (map @ud @t)
  (malt glyph-list)
::  +glyph-list: list of pairs of equivalent [arabic roman] glyphs
::
++  glyph-list
  ^-  (list [@ud @t])
  :~  :-  1.000   'm'
      :-  900    'cm'
      :-  500     'd'
      :-  400    'cd'
      :-  100     'c'
      :-  90     'xc'
      :-  50      'l'
      :-  40     'xl'
      :-  10      'x'
      :-  9      'ix'
      :-  5       'v'
      :-  4      'iv'
      :-  1       'i'
  ==
--

