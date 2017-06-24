module AFrameTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector exposing (tag)
import AFrame exposing (entity, scene)


suite : Test
suite =
    describe "Aframe Suite"
        [ test "entity" <|
            \_ ->
                entity [] []
                    |> Query.fromHtml
                    |> Query.has [ tag "a-entity" ]
        , test "scene" <|
            \_ ->
                scene [] []
                    |> Query.fromHtml
                    |> Query.has [ tag "a-scene" ]
        ]
