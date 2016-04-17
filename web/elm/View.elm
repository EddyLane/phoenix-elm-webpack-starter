module View where
import Html exposing (..)
import Types exposing (Action, Model)

root : Signal.Address Action -> Model -> Html
root address model = div [] [ text "Hello world" ]