import Html exposing (text)
import Dict
import Maybe

main : Html.Html msg
main = 
    String.map leet "EMACSISBETTER"
    |> toString
    |> text
    

leet : Char -> Char
leet char = 
    let
      leetString = Dict.fromList [('A','4'),('E','3'),('G','6'),('I','1'),('O','0'),('S','5'),('Z','2')]
    in
        Dict.get char leetString
        |> Maybe.withDefault char  