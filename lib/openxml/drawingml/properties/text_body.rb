module OpenXml
  module DrawingML
    module Properties
      class TextBody < SimplePropertyContainerProperty
        include OpenXml::HasChildren
        namespace :a
        tag :txBody

        property :body_properties, required: true
        property :list_style

      end
    end
  end
end
