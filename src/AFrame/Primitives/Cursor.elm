module AFrame.Primitives.Cursor exposing
    ( cursor
    , fuse, maxDistance, timeout, raycaster
    )

{-| Cursor primitive.


# Definitions

@docs cursor


# Attributes

@docs fuse, maxDistance, timeout, raycaster

-}

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute)
import String exposing (toLower)


{-| The cursor primitive places a reticle or crosshair to add clicking
and interactivity with the scene.
-}
cursor : List (Attribute msg) -> List (Html msg) -> Html msg
cursor =
    node "a-cursor"


{-| Whether cursor should also be fuse-based.
-}
fuse : Bool -> Attribute msg
fuse value =
    attribute "fuse"
        (toLower
            (if value then
                "true"

             else
                "false"
            )
        )


{-| Maximum distance to check for intersections on entities for clicks.
-}
maxDistance : Int -> Attribute msg
maxDistance value =
    attribute "max-distance" (String.fromInt value)


{-| How long to wait (in milliseconds) to trigger a click event if fuse-based.
-}
timeout : Int -> Attribute msg
timeout value =
    attribute "timeout" (String.fromInt value)


{-| Customize the raycasting pieces of the cursor.
-}
raycaster : String -> Attribute msg
raycaster value =
    attribute "raycaster" value
