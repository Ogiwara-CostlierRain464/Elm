import Html exposing (Html,text)

main = text(fizzbuzz 4)

--Using if elseif else
fizzbuzz n =
    if n % 15 == 0 then
        "FizzBuzz"
    else if n % 5 == 0 then
        "Fizz"
    else if n % 3 == 0 then
        "Buzz"
    else
        toString n    

--Using case exp.
fizzbuzz2 n =
    case n of
    3 -> "Buzz"
    5 -> "Fizz"
    15 -> "FizzBuzz"
    _ -> toString n
