require "openxml/drawingml/properties/relative_rectangle_property"

module OpenXml
  module DrawingML
    module Properties
      class TileRectangle < RelativeRectangleProperty
        namespace :a
        tag :tileRect

      end
    end
  end
end
