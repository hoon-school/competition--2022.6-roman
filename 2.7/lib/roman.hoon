|%
::  +parse: roman numeral to @ud
::
++  parse
  |=  t=tape  ^-  @ud
  =/  num  `(list @ud)`(scan (cass t) (star (cook lookup (mask char-list))))
  (reel num count)
::
++  count
  |=  [a=@ b=@]  ^-  @ud
  ?:  (gth (mul 5 a) b)
    (add b a)
  (sub b a)
::
++  lookup
  |=  a=@tD  ^-  @ud
  (~(got by char-map) a)
::
++  char-map
  (my ~[['i' 1] ['v' 5] ['x' 10] ['l' 50] ['c' 100] ['d' 500] ['m' 1.000]])
::
++  char-list
  "ivxlcdmVX"
::
::  +yield @ud to roman numeral
::
++  yield
  |=  [n=@ud]  ^-  tape
  :: order of magnitude
  =+  m=4          
  |-  ^-  tape
  ?:  =(m 0)
    ~
  ::  get characters for order of magnitude;
  ::  e.g., 1 >> unit: i, half: v, ten: x
  ::
  =/  [unit=@tD half=@tD ten=@tD]
    [(char m 0) (char m 1) (char m 2)]
  :: q, quotient(current digit); r, remainder
  ::
  =/  [q=@ud r=@ud]                        
    (dvr n (pow 10 (sub m 1)))
  :: s, d, used to differtiate digit
  :: 
  =+  [s=(div +(q) 5) d=(div q 5)]
  %+  weld
    :: is not 4,9?
    ::
    ?:  =(d s)
      %+  weld
        (reap s half)
      (reap (mod q 5) unit)
    :: is 4 xor 9?
    ::  
    ?.  =(0 d)
      [unit ten ~]
    [unit half ~]
  $(m (dec m), n r)
::  fetch individual character for order of magnitude.
::  
++  char
  |=  [m=@ud a=@ud]  ^-  @tD
  =/  pos=@ud
    (sub (mul 2 m) (sub 2 a))
  (snag pos char-list)
--

