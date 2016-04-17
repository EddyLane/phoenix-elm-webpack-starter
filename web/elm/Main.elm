module Main (main) where

import StartApp exposing (start)
import Html exposing (..)
import State
import Types
import View

app = start { init = State.initialState
            , update = State.update
            , view = View.root
            , inputs = []
            }

main : Signal Html
main = app.html