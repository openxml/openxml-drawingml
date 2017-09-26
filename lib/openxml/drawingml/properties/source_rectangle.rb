require "openxml/drawingml/properties/relative_rectangle_property"

module OpenXml
  module DrawingML
    module Properties
      class SourceRectangle < RelativeRectangleProperty
        namespace :a
        tag :srcRect

      end
    end
  end
end
