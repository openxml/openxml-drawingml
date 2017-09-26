require "openxml/drawingml/properties/style_matrix_reference_property"

module OpenXml
  module DrawingML
    module Properties
      class FillReference < StyleMatrixReferenceProperty
        namespace :a
        tag :fillRef

      end
    end
  end
end
