module AFrame.Primitives.Camera exposing
    ( camera
    , far, fov, lookControlsEnabled, near, wasdControlsEnabled
    )

{-| Camera primitive.


# Primitives

@docs camera


# Attributes

@docs far, fov, lookControlsEnabled, near, wasdControlsEnabled

-}

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute)
import String exposing (toLower)


{-| The camera primitive places the user somewhere within the scene.

    camera [] []

-}
camera : List (Attribute msg) -> List (Html msg) -> Html msg
camera =
    node "a-camera"


{-| Camera frustum far clipping plane.
-}
far : Int -> Attribute msg
far value =
    attribute "far" (String.fromInt value)


{-| Field of view (in degrees).
-}
fov : Int -> Attribute msg
fov value =
    attribute "fov" (String.fromInt value)


{-| Enable look controls.

    camera [ lookControlsEnabled False ] []

-}
lookControlsEnabled : Bool -> Attribute msg
lookControlsEnabled value =
    attribute "look-controls-enabled"
        (toLower
            (if value then
                "true"

             else
                "false"
            )
        )


{-| Camera frustum near clipping plane.
-}
near : Float -> Attribute msg
near value =
    attribute "near" (String.fromFloat value)


{-| Enable WASD controls for camera.

    camera [ wasdControlsEnabled False ] []

-}
wasdControlsEnabled : Bool -> Attribute msg
wasdControlsEnabled value =
    attribute "wasd-controls-enabled"
        (toLower
            (if value then
                "true"

             else
                "false"
            )
        )
