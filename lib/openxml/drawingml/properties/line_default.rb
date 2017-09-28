require "openxml/drawingml/properties/default_shape_properties"

module OpenXml
  module DrawingML
    module Properties
      class LineDefault < DefaultShapeProperties
        namespace :a
        tag :lnDef

      end
    end
  end
end
