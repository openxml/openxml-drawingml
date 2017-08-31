require "openxml/drawingml/properties/relative_rectangle_property"

module OpenXml
  module DrawingML
    module Properties
      class FillRectangle < RelativeRectangleProperty
        namespace :a
        tag :fillRect

      end
    end
  end
end
