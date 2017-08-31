require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorComponentRgb < ColorProperty
        namespace :a
        tag :scrgbClr

        attribute :blue, displays_as: :b, expects: :percentage
        attribute :green, displays_as: :g, expects: :percentage
        attribute :red, displays_as: :r, expects: :percentage

      end
    end
  end
end
