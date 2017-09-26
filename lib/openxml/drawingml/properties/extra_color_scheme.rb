module OpenXml
  module DrawingML
    module Properties
      class ExtraColorScheme < SimplePropertyContainerProperty
        namespace :a
        tag :extraClrScheme

        property :color_scheme, required: true
        property :color_mapping

      end
    end
  end
end
