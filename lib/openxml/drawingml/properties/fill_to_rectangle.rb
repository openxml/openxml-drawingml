require "openxml/drawingml/properties/relative_rectangle_property"

module OpenXml
  module DrawingML
    module Properties
      class FillToRectangle < RelativeRectangleProperty
        namespace :a
        tag :fillToRect

      end
    end
  end
end
