module App exposing (..)

import Html exposing(Html,div,text,program)
import Mouse
import Keyboard

--モデル

type alias Model =
    Int

init : (Model,Cmd Msg)
init = 
    (0,Cmd.none) --updateに渡す

--メッセージ

type Msg
  = MouseMsg Mouse.Position
  | KeyMsg Keyboard.KeyCode

--VIEW

view : Model -> Html Msg
view model =
    div []
        [text(toString model),text "FUCK"]

--更新

update: Msg -> Model -> (Model,Cmd Msg)
update msg model =
    case msg of
        MouseMsg position -> 
            (model + 1,Cmd.none)
        KeyMsg code ->
            (model + 2,Cmd.none)    

--SUBSCRIPTIONS(購読) 待ち受け イベント登録!!!

subscriptions : Model -> Sub Msg
subscriptions model = 
  Sub.batch
        [ Mouse.clicks MouseMsg
        , Keyboard.downs KeyMsg
        ]

--Main

main : Program Never Model Msg
main =
    program
        {
            init = init,
            view = view,
            update = update,
            subscriptions = subscriptions
        }