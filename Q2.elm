import Html exposing (text)

main : Html.Html msg
main =
    text(toString(numPlay 534783))

numPlay : Int -> Int
numPlay num = 
    if num <= 9 then
        num
    else 
        let
            d = num // 10
            r = num % 10
        in
            numPlay(d+r)
          