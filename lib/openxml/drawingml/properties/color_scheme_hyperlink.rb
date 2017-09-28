require "openxml/drawingml/properties/color_container_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorSchemeHyperlink < ColorContainerProperty
        namespace :a
        tag :hlink

      end
    end
  end
end
