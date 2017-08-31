module OpenXml
  module DrawingML
    module Properties
      class ObjectDefaults < SimplePropertyContainerProperty
        namespace :a
        tag :objectDefaults

        property :shape_default
        property :line_default
        property :text_default

        property :extension_list

      end
    end
  end
end
