require "openxml/drawingml/properties/color_container_property"

module OpenXml
  module DrawingML
    module Properties
      class FillSolid < ColorContainerProperty
        namespace :a
        tag :solidFill

      end
    end
  end
end
