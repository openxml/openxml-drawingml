require "openxml/drawingml/properties/color_mapping"

module OpenXml
  module DrawingML
    module Properties
      class ColorMappingOverrideMap < ColorMapping
        namespace :a
        tag :overrideClrMapping

      end
    end
  end
end
