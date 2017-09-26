require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorSystemColor < ColorProperty
        namespace :a
        tag :sysClr

        SYSTEM_COLORS = %i{
          3dDkShadow 3dLight activeBorder activeCaption appWorkspace
          background btnFace btnHighlight btnShadow btnText captionText
          gradientActiveCaption gradientInactiveCaption grayText highlight
          highlightText hotLight inactiveBorder inactiveCaption
          inactiveCaptionText infoBk infoText menu menuBar menuHighlight
          menuText scrollBar window windowFrame windowText
        }.freeze

        attribute :value, displays_as: :val, one_of: SYSTEM_COLORS
        attribute :last_color, displays_as: :lastClr, expects: :hex_color

        def initialize(value)
          super()
          self.value = value
        end

      end
    end
  end
end
