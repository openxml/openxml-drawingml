require "openxml/drawingml/properties/style_matrix_reference_property"

module OpenXml
  module DrawingML
    module Properties
      class EffectReference < StyleMatrixReferenceProperty
        namespace :a
        tag :effectRef

      end
    end
  end
end
