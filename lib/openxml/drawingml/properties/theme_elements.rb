module OpenXml
  module DrawingML
    module Properties
      class ThemeElements < SimplePropertyContainerProperty
        namespace :a
        tag :themeElements

        property :color_scheme, required: true
        property :font_scheme, required: true
        property :format_scheme, required: true
        property :extension_list

      end
    end
  end
end
