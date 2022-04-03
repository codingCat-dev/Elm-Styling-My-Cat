module Main exposing (..)

import Element
import Element.Background
import Element.Font
import Svg.Styled exposing (view)


main =
    viewLayout


colors =
    { black = Element.rgb255 0 0 0
    , lightGray = Element.rgb255 245 245 245
    , primary = Element.rgb255 0xFF 0xAB 0x00
    , primaryLight = Element.rgb255 0xFF 0xE6 0x00
    }


fontMain =
    Element.Font.family [ Element.Font.typeface "RemachineScript" ]


viewLayout =
    Element.layoutWith
        { options = []
        }
        [ Element.Background.color colors.lightGray
        , Element.padding 20
        , Element.Font.center
        ]
        (Element.column
            []
            [ viewTitle
            , viewSubtitle
            , catImage
            , viewContent
            ]
        )


viewTitle =
    Element.paragraph
        [ Element.Font.bold
        , Element.Font.color colors.primary
        , fontMain
        , Element.Font.size 48
        ]
        [ Element.text "My Kitty"
        ]


viewSubtitle =
    Element.paragraph
        [ Element.Font.color colors.black
        , Element.Font.size 28
        , Element.paddingXY 0 10
        , fontMain
        ]
        [ Element.text "A website for my cat"
        ]


catImage =
    Element.image
        [ Element.width (Element.maximum 400 Element.fill)
        , Element.centerX
        ]
        { src = "cat.jpg"
        , description = "My cat picture"
        }


text1 =
    "Jelly-o candy canes sugar plum biscuit carrot cake brownie muffin. Ice cream sugar plum chocolate caramels marzipan jelly dragée. Ice crlollipop. Dessert jelly-o gummi bears sugar plum sweet tootsie e liquorice lollipop soufflé."


text2 =
    " Pastry liquorice macaroon topping dessert ice cream pastry marshmallow caramels. Candy tart pie chocolate bar toffee. Jelly-o liquorice macaroon chupa chups lemon drops oat cake jelly beans chupa chups carrot cake."


text3 =
    "Shortbread sugar plum jelly-o jelly-o macaroon. Sweet sweet roll powder dessert wafer donut. Fruitcake macaroon gummies soufflé pudding. Cake cake fruitcake shortbread wafer wafer ice cream powder. Tart tart halvah ice \ncream gummies cake biscuit. Fruitcake tootsie roll powder croissant lemon drops. Lemon drops halvah cake dragée sweet roll tiramisu. Caramels icing sesame snaps brownie icing candy canes. Icing liquorice pastry croissant macaroon sugar plum cake."


viewContent =
    Element.column [ fontMain, Element.Font.size 30 ]
        [ Element.paragraph [ Element.paddingXY 0 10 ] [ Element.text text1 ]
        , Element.paragraph [ Element.paddingXY 0 10 ] [ Element.text text2 ]
        , Element.paragraph [ Element.paddingXY 0 10 ] [ Element.text text3 ]
        ]
