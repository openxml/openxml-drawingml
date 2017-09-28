require "openxml/drawingml/properties/default_shape_properties"

module OpenXml
  module DrawingML
    module Properties
      class TextDefault < DefaultShapeProperties
        namespace :a
        tag :txDef

      end
    end
  end
end
