require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorHsl < ColorProperty
        namespace :a
        tag :hslClr

        attribute :hue, expects: :integer, in_range: (0..21_600_000)
        attribute :luminance, displays_as: :lum, expects: :percentage
        attribute :saturation, displays_as: :sat, expects: :percentage

      end
    end
  end
end
