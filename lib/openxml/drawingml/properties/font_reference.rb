require "openxml/drawingml/properties/style_matrix_reference_property"

module OpenXml
  module DrawingML
    module Properties
      class FontReference < StyleMatrixReferenceProperty
        namespace :a
        tag :fontRef

      end
    end
  end
end
