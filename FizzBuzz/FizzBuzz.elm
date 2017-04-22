import Html exposing (Html,text)

main = text "FUCK"

fizzbuzz n =
    if | n % 15 == 0 -> "FizzBuzz"
       | n % 5 == 0 -> "Buzz"
       | n % 3 == 0 -> "Fizz"
       | otherwise -> toString n