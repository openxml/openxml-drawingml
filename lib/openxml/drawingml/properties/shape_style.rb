module OpenXml
  module DrawingML
    module Properties
      class ShapeStyle < SimplePropertyContainerProperty
        namespace :a
        tag :style

        property :outline_reference, required: true
        property :fill_reference, required: true
        property :effect_reference, required: true
        property :font_reference, required: true

      end
    end
  end
end
