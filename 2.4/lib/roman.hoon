|%
  ++  parse
    |=  input=tape
    ^-  @ud
    =/  text  (cass input)
    =/  total  0
    =/  index  0
    =/  length  (lent text)
    |- 
      ?:  (gte index length)
        total 
    ::
      ?:  =((snag index text) 'm')
        $(index +(index), total (add total 1.000))
    ::
      ?:  =((snag index text) 'd')
        $(index +(index), total (add total 500))
    ::
      ?:  =((snag index text) 'c')
        ?:  =(index (sub length 1))
          (add total 100)
        ?:  =((snag (add index 1) text) 'd')
          $(index (add index 2), total (add total 400))
        ?:  =((snag (add index 1) text) 'm')
          $(index (add index 2), total (add total 900))
        $(index +(index), total (add total 100))
    ::
      ?:  =((snag index text) 'l')
        $(index +(index), total (add total 50))
    ::
      ?:  =((snag index text) 'x')
        ?:  =(index (sub length 1))
          (add total 10)
        ?:  =((snag (add index 1) text) 'l')
          $(index (add index 2), total (add total 40))
        ?:  =((snag (add index 1) text) 'c')
          $(index (add index 2), total (add total 90))
        ?:  =((snag (add index 1) text) 'm')
          $(index (add index 2), total (add total 990))
        $(index +(index), total (add total 10))
    ::
      ?:  =((snag index text) 'v')
        $(index +(index), total (add total 5))
    ::
      ?:  =((snag index text) 'i')
        ?:  =(index (sub length 1))
          (add total 1)
        ?:  =((snag (add index 1) text) 'v')
          $(index (add index 2), total (add total 4))
        ?:  =((snag (add index 1) text) 'x')
          $(index (add index 2), total (add total 9))
        $(index +(index), total (add total 1))
      !!
::
::
  ++  yield
    |=  num=@ud
    ^-  tape
    =/  text  *tape
    |-
      ?:  =(num 0)
        text
      ?:  (gte num 1.000)
        $(num (sub num 1.000), text (snoc text 'm'))
      ?:  (gte num 900)
        $(num (sub num 900), text (weld text "cm"))
      ?:  (gte num 500)
        $(num (sub num 500), text (snoc text 'd'))     
      ?:  (gte num 400)
        $(num (sub num 400), text (weld text "cd"))
      ?:  (gte num 100)
        $(num (sub num 100), text (snoc text 'c'))
      ?:  (gte num 90)
        $(num (sub num 90), text (weld text "xc"))
      ?:  (gte num 50)
        $(num (sub num 50), text (snoc text 'l'))
      ?:  (gte num 40)
        $(num (sub num 40), text (weld text "xl"))
      ?:  (gte num 10)
        $(num (sub num 10), text (snoc text 'x'))
      ?:  (gte num 9)
        $(num (sub num 9), text (weld text "ix"))
      ?:  (gte num 5)
        $(num (sub num 5), text (snoc text 'v'))
      ?:  (gte num 4)
        $(num (sub num 4), text (weld text "iv"))
      ?:  (gte num 1)
        $(num (sub num 1), text (snoc text 'i'))
      text
--

