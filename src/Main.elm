module Main exposing (..)

import Element
import Element.Background
import Element.Font


main =
    viewLayout


blue =
    Element.rgb255 0 0 200


black =
    Element.rgb255 0 0 0


lightGray =
    Element.rgb255 245 245 245


fontMain =
    Element.Font.family [ Element.Font.typeface "RemachineScript" ]


viewLayout =
    Element.layoutWith
        { options = []
        }
        [ Element.Background.color lightGray
        , Element.padding 20
        ]
        (Element.column
            []
            [ viewTitle
            , viewSubtitle
            , catImage
            ]
        )


viewTitle =
    Element.paragraph
        [ Element.Font.bold
        , Element.Font.color blue
        , fontMain
        , Element.Font.size 48
        ]
        [ Element.text "My Kitty"
        ]


viewSubtitle =
    Element.paragraph [ Element.Font.color black ]
        [ Element.text "A website for my cat"
        ]


catImage =
    Element.image [ Element.width Element.fill ]
        { src = "cat.jpg"
        , description = "My cat picture"
        }
