module AFrame.Extra.ModelLoader exposing (plymodel)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


plymodel : String -> Attribute msg
plymodel value =
    attribute "ply-model" value
