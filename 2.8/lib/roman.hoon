|%
::
::
++  parse
    |=  dirty-roman=tape
    :: I was struggling to implement the logic I was thinking for deriving the subtracked values, so I hard coded them
    :: Below in the malt table are the accepted roman numbers
    =/  table  (malt ~[['i' 1] ['iv' 4] ['v' 5] ['ix' 9] ['x' 10] ['il' 40] ['l' 50] ['xc' 90] ['c' 100] ['cd' 400] ['d' 500] ['cm' 900] ['m' 1.000]])
    :: Lowercase the input from the user
    =/  roman  (cass dirty-roman)
    =/  prev  0
    =/  result  0
    =/  i  0
    ^-  @ud
    :: If the input is a single character, got from table and return it
    ?:  =((lent roman) 1)
      (~(got by table) (snag i `(list @t)`roman))
    :: Trap to iterate through the tape one character at a time.
    :: The current value will be grabbed, stored, and then iterate.
    :: The current value will be compared to the previous value. If current < previous, it's a subtraction of previous from current.
    :: Iterate through the trap until our iterator has reached the end of the tape
    |-
    =/  curr  (~(got by table) (snag i `(list @t)`roman))
    ?:  =(i (sub (lent roman) 1))
      ?:  (lth prev curr)
        :: This find will verify that the subtraction being used/checked is valid like `ix`, and not something like `id`
        ?~  (find [(sub curr prev)]~ ~(val by table))
          !!
        :: If it's a valid subtraction, perform it, then add to result
        (add result (sub curr prev))
      (add (add result curr) prev)
    ?:  =(prev 0)
      %=  $
        :: When previous is 0, set to current and return to the top of the trap
        prev  curr
        i  +(i)
      ==
    :: This works, but will have to be adjusted to see if it's one of the acceptable pair matchings
    ?:  (lth prev curr)
      :: This find will verify that the subtraction being used/checked is valid like `ix`, and not something like `id`
      ?~  (find [(sub curr prev)]~ ~(val by table))
        !!
      %=  $
        :: If it's a valid subtraction, perform it, then add to result
        result  (add result (sub curr prev))
        prev  0
        i  +(i)
      ==
    %=  $
      prev  curr
      :: If values are decrease from left to right, add previous to the result before updating it's value to current
      result  (add result prev)
      i  +(i)
    ==

++  yield
  |=  number=@ud
  :: This is a simple and "dirty" transition for yield, basically move from the largest number to the smallest.
  :: Check the large number, check its appropriate subtraction right after, then move to the next number.
  :: Note that the subtraction number is derived by adding to the number in use, then performing the mod.
  :: If this number does not produce any values from the mod, we continue forward with number, if it does, we use that number. This is what the min gate does.
  :: m count
  =/  result  `tape`(reap (div number 1.000) 'm')
  =/  number  (mod number 1.000)
  :: cm count
  =/  result  (weld result `tape`(reap (div (add number 100) 1.000) 'cm'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 100) 1.000) number)
  :: d count
  =/  result  (weld result `tape`(reap (div number 500) 'd'))
  =/  number  (mod number 500)
  :: cd count
  =/  result  (weld result `tape`(reap (div (add number 100) 500) 'cd'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 100) 500) number)
  :: c count
  =/  result  (weld result `tape`(reap (div number 100) 'c'))
  =/  number  (mod number 100)
  :: xc count
  =/  result  (weld result `tape`(reap (div (add number 10) 100) 'xc'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 10) 100) number)
  :: l count
  =/  result  (weld result `tape`(reap (div number 50) 'l'))
  =/  number  (mod number 50)
  :: xl count
  =/  result  (weld result `tape`(reap (div (add number 10) 50) 'xl'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 10) 50) number)
  :: x count
  =/  result  (weld result `tape`(reap (div number 10) 'x'))
  =/  number  (mod number 10)
  :: ix count
  =/  result  (weld result `tape`(reap (div (add number 1) 10) 'ix'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 1) 10) number)
  :: v count
  =/  result  (weld result `tape`(reap (div number 5) 'v'))
  =/  number  (mod number 5)
  :: iv count
  =/  result  (weld result `tape`(reap (div (add number 1) 5) 'iv'))
  :: If the increased modulus attempt value is now larger, it means that the 100 was added, and it wasn't able to mod number from it, so stick with number
  =/  number  (min (mod (add number 1) 5) number)
  :: i count
  =/  result  (weld result `tape`(reap number 'i'))
  ^-  tape
  result
--

