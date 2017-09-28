require "openxml/drawingml/properties/color_container_property"

module OpenXml
  module DrawingML
    module Properties
      class Highlight < ColorContainerProperty
        namespace :a
        tag :highlight

      end
    end
  end
end
