require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorHexRgb < ColorProperty
        namespace :a
        tag :srgbClr

        attribute :value, displays_as: :val, expects: :hex_color

        def initialize(value)
          super()
          self.value = value
        end

      end
    end
  end
end
