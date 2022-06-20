/+  *test, *roman
|%
++  test-output-one
  =/  src  "i"
  =/  trg  1
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-two
  =/  src  "ii"
  =/  trg  2
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-three
  =/  src  "iii"
  =/  trg  3
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-four
  =/  src  "iv"
  =/  trg  4
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-four-var
  =/  src  "iiii"
  =/  trg  4
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-five
  =/  src  "v"
  =/  trg  5
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-six
  =/  src  "vi"
  =/  trg  6
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-seven
  =/  src  "vii"
  =/  trg  7
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-eight
  =/  src  "viii"
  =/  trg  8
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-nine
  =/  src  "ix"
  =/  trg  9
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-ten
  =/  src  "x"
  =/  trg  10
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-eleven
  =/  src  "xi"
  =/  trg  11
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-twelve
  =/  src  "xii"
  =/  trg  12
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-thirteen
  =/  src  "xiii"
  =/  trg  13
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-fourteen
  =/  src  "xiv"
  =/  trg  14
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-fifteen
  =/  src  "xv"
  =/  trg  15
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-sixteen
  =/  src  "xvi"
  =/  trg  16
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-seventeen
  =/  src  "xvii"
  =/  trg  17
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-eighteen
  =/  src  "xviii"
  =/  trg  18
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-nineteen
  =/  src  "xix"
  =/  trg  19
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-twenty
  =/  src  "xx"
  =/  trg  20
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-twenty-three
  =/  src  "xxiii"
  =/  trg  23
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-twenty-five
  =/  src  "xxv"
  =/  trg  25
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-twenty-seven
  =/  src  "xxvii"
  =/  trg  27
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-thirty-one
  =/  src  "xxxi"
  =/  trg  31
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-thirty-nine
  =/  src  "xxxix"
  =/  trg  39
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-forty-two
  =/  src  "xlii"
  =/  trg  42
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-forty-nine
  =/  src  "xlix"
  =/  trg  49
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-fifty
  =/  src  "l"
  =/  trg  50
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-sixty-two
  =/  src  "lxii"
  =/  trg  62
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-seventy-eight
  =/  src  "lxxviii"
  =/  trg  78
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-ninety-four-var
  =/  src  "xciiii"
  =/  trg  94
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-one-hundred
  =/  src  "c"
  =/  trg  100
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-one-hundred-thirty-three
  =/  src  "cxxxiii"
  =/  trg  133
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-four-hundred-ninety-nine
  =/  src  "cdxcix"
  =/  trg  499
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-five-hundred
  =/  src  "d"
  =/  trg  500
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-five-hundred-forty-eight
  =/  src  "dxlviii"
  =/  trg  548
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-six-hundred-sixty-nine
  =/  src  "dclxix"
  =/  trg  669
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-eight-hundred-eighty-eight
  =/  src  "dccclxxxviii"
  =/  trg  888
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-nine-hundred-ninety-nine
  =/  src  "cmxcix"
  =/  trg  999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-one-thousand
  =/  src  "m"
  =/  trg  1.000
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-one-thousand-nine-hundred-ninety-nine
  =/  src  "mcmxcix"
  =/  trg  1.999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-two-thousand-twenty-two
  =/  src  "mmxxii"
  =/  trg  2.022
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-output-three-thousand-nine-hundred-ninety-nine
  =/  src  "mmmcmxcix"
  =/  trg  3.999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (parse src)
  %+  expect-eq
    !>  trg
    !>  (parse (cuss src))
  ==
++  test-input-one
  =/  trg  "i"
  =/  src  1
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-two
  =/  trg  "ii"
  =/  src  2
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-three
  =/  trg  "iii"
  =/  src  3
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-four
  =/  trg  "iv"
  =/  src  4
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-five
  =/  trg  "v"
  =/  src  5
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-six
  =/  trg  "vi"
  =/  src  6
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-seven
  =/  trg  "vii"
  =/  src  7
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-eight
  =/  trg  "viii"
  =/  src  8
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-nine
  =/  trg  "ix"
  =/  src  9
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-ten
  =/  trg  "x"
  =/  src  10
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-eleven
  =/  trg  "xi"
  =/  src  11
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-twelve
  =/  trg  "xii"
  =/  src  12
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-thirteen
  =/  trg  "xiii"
  =/  src  13
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-fourteen
  =/  trg  "xiv"
  =/  src  14
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-fifteen
  =/  trg  "xv"
  =/  src  15
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-sixteen
  =/  trg  "xvi"
  =/  src  16
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-seventeen
  =/  trg  "xvii"
  =/  src  17
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-eighteen
  =/  trg  "xviii"
  =/  src  18
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-nineteen
  =/  trg  "xix"
  =/  src  19
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-twenty
  =/  trg  "xx"
  =/  src  20
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-twenty-three
  =/  trg  "xxiii"
  =/  src  23
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-twenty-five
  =/  trg  "xxv"
  =/  src  25
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-twenty-seven
  =/  trg  "xxvii"
  =/  src  27
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-thirty-one
  =/  trg  "xxxi"
  =/  src  31
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-thirty-nine
  =/  trg  "xxxix"
  =/  src  39
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-forty-two
  =/  trg  "xlii"
  =/  src  42
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-forty-nine
  =/  trg  "xlix"
  =/  src  49
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-fifty
  =/  trg  "l"
  =/  src  50
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-sixty-two
  =/  trg  "lxii"
  =/  src  62
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-seventy-eight
  =/  trg  "lxxviii"
  =/  src  78
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-one-hundred
  =/  trg  "c"
  =/  src  100
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-one-hundred-thirty-three
  =/  trg  "cxxxiii"
  =/  src  133
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-four-hundred-ninety-nine
  =/  trg  "cdxcix"
  =/  src  499
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-five-hundred
  =/  trg  "d"
  =/  src  500
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-five-hundred-forty-eight
  =/  trg  "dxlviii"
  =/  src  548
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-six-hundred-sixty-nine
  =/  trg  "dclxix"
  =/  src  669
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-eight-hundred-eighty-eight
  =/  trg  "dccclxxxviii"
  =/  src  888
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-nine-hundred-ninety-nine
  =/  trg  "cmxcix"
  =/  src  999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-one-thousand
  =/  trg  "m"
  =/  src  1.000
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-one-thousand-nine-hundred-ninety-nine
  =/  trg  "mcmxcix"
  =/  src  1.999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-two-thousand-twenty-two
  =/  trg  "mmxxii"
  =/  src  2.022
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
++  test-input-three-thousand-nine-hundred-ninety-nine
  =/  trg  "mmmcmxcix"
  =/  src  3.999
  ;:  weld
  %+  expect-eq
    !>  trg
    !>  (yield src)
  ==
--

