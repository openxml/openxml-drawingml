require "openxml/drawingml/properties/color_container_property"

module OpenXml
  module DrawingML
    module Properties
      class CustomColor < ColorContainerProperty
        namespace :a
        tag :custClr

      end
    end
  end
end
