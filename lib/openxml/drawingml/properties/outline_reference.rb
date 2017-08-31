require "openxml/drawingml/properties/style_matrix_reference_property"

module OpenXml
  module DrawingML
    module Properties
      class OutlineReference < StyleMatrixReferenceProperty
        namespace :a
        tag :lnRef

      end
    end
  end
end
