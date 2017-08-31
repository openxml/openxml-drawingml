module OpenXml
  module DrawingML
    module Properties
      class DefaultShapeProperties < SimplePropertyContainerProperty
        property :shape_properties, required: true
        property :body_properties, required: true
        property :list_style, required: true

        # TODO: add property :style, tag: style
        property :extension_list

      end
    end
  end
end
