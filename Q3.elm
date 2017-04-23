import Html exposing (text)
import List

main : Html.Html msg
main =
 List.range 1 20
 |> List.map fizzBuzz
 |> toString
 |> text

fizzBuzz : Int -> String
fizzBuzz num =
    if num % 15 == 0 then
        "FizzBuzz"
    else if num % 5 == 0 then
        "Fizz"
    else if num % 3 == 0 then
        "Buzz"
    else
        toString num