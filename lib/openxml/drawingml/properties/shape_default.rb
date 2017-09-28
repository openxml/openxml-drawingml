require "openxml/drawingml/properties/default_shape_properties"

module OpenXml
  module DrawingML
    module Properties
      class ShapeDefault < DefaultShapeProperties
        namespace :a
        tag :spDef

      end
    end
  end
end
