require "openxml/drawingml/properties/color_container_property"

module OpenXml
  module DrawingML
    module Properties
      class BulletColor < ColorContainerProperty
        namespace :a
        tag :buClr

      end
    end
  end
end
