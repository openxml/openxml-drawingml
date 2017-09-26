require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorPresetColor < ColorProperty
        namespace :a
        tag :prstClr

        PRESET_COLORS = %i{
          aliceBlue antiqueWhite aqua aquamarine azure beige bisque black
          blanchedAlmond blue blueViolet brown burlyWood cadetBlue chartreuse
          chocolate coral cornflowerBlue consilk crimson cyan darkBlue darkCyan
          darkGoldenrod darkGray darkGrey darkGreen darkKhaki darkMagenta
          darkOliveGreen darkOrange darkOrchid darkRed darkSalmon darkSeaGreen
          darkSlateBlue darkSlateGray darkSlateGrey darkTurquoise darkViolet
          dkBlue dkCyan dkGoldenrod dkGray dkGrey dkGreen dkKhaki dkMagenta
          dkOliveGreen dkOrange dkOrchid dkRed dkSalmon dkSeaGreen dkSlateBlue
          dkSlateGray dkSlateGrey dkTurquoise dkViolet deepPink deepSkyBlue
          dimGray dimGrey dodgerBlue firebrick floralWhite forestGreen fuchsia
          gainsboro ghostWhite gold goldenrod gray grey green greenYellow
          honeydew hotPink indianRed indigo ivory khaki lavender lavenderBlush
          lawnGreen lemonChiffon lightBlue lightCoral lightCyan
          lightGoldenrodYellow lightGray lightGrey lightGreen lightPink
          lightSalmon lightSeaGreen lightSkyBlue lightSlateGray lightSlateGrey
          lightSteelBlue lightYellow ltBlue ltCoral ltCyan ltGoldenrodYellow
          ltGray ltGrey ltGreen ltPink ltSalmon ltSeaGreen ltSkyBlue ltSlateGray
          ltSlateGrey ltSteelBlue ltYellow lime limeGreen linen magenta maroon
          medAquamarine medBlue medOrchid medPurple medSeaGreen medSlateBlue
          medSpringGreen medTurquoise medVioletRed mediumAquamarine mediumBlue
          mediumOrchid mediumPurple mediumSeaGreen mediumSlateBlue mediumSpringGreen
          mediumTurquoise mediumVioletRed midnightBlue mintCream mistyRose moccasin
          navajoWhite navy oldLace olive oliveDrab orange orangeRed orchid
          paleGoldenrod paleGreen paleTurquoise paleVioletRed papayaWhip
          peachPuff peru pink plum powderBlue purple red rosyBrown royalBlue
          saddleBrown salmon sandyBrown seaGreen seaShell sienna silver skyBlue
          slateBlue slateGray slateGrey snow springGreen steelBlue tan teal thistle
          tomato turquoise violet wheat white whiteSmoke yellow yellowGreen
        }.freeze

        attribute :value, displays_as: :val, one_of: PRESET_COLORS

        def initialize(value)
          super()
          self.value = value
        end

      end
    end
  end
end
