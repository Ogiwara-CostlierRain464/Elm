import Html exposing (text)

main : Html.Html msg
main =
    factorial 10
    |> toString 
    |> text

factorial : Int -> Int
factorial num =
    if num == 1 then
        1
    else
        num * factorial(num - 1)