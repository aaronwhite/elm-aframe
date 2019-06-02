module Main exposing (..)

import Html exposing (Html)
import Color exposing (rgb255)
import AFrame exposing (scene, entity)
import AFrame.Primitives exposing (sphere, box, cylinder, plane, sky)
import AFrame.Primitives.Attributes
    exposing
        ( rotation
        , position
        , radius
        , color
        , width
        , height
        , depth
        , vrModeUi
        )

--  <a-scene background="color: #FAFAFA">
--       <a-box position="-1 0.5 -3" rotation="0 45 0" color="#4CC3D9" shadow></a-box>
--       <a-sphere position="0 1.25 -5" radius="1.25" color="#EF2D5E" shadow></a-sphere>
--       <a-cylinder position="1 0.75 -3" radius="0.5" height="1.5" color="#FFC65D" shadow></a-cylinder>
--       <a-plane position="0 0 -4" rotation="-90 0 0" width="4" height="4" color="#7BC8A4" shadow></a-plane>
--     </a-scene>
main : Html msg
main =
    scene
        [ vrModeUi True ]
        [ sphere
            [ position 0 1.25 -5
            , radius 1.25
            , color (rgb255 240 173 0)
            ]
            []
        , box
            [ position -1 0.5 -3
            , rotation 0 45 0
            , color (rgb255 127 209 59)
            ]
            []
        , cylinder
            [ position 1 0.75 -3
            , radius 0.5
            , height 1.5
            , color (rgb255 6 181 204)
            ]
            []
        , plane
            [ position 0 0 -4
            ,    rotation -90 0 0
            , width 4
            , height 4
            , color (rgb255 90 99 120)
            ]
            []
        , sky
            [  color (rgb255 1 5 20) ]
            []
        ]
