module State where

import Types exposing (Model, Action)
import Effects exposing (Effects, Never)

initialModel : Model
initialModel = { posts = [{ user = "Eddy", content = "Hello!" }] }

initialState: (Model, Effects Action)
initialState = (initialModel, Effects.none)

update : Action -> Model -> (Model, Effects Action)
update action model =
    case action of

        Types.NoOp -> (model, Effects.none)