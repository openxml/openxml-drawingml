module OpenXml
  module DrawingML
    module Properties
      class FontCollectionProperty < SimplePropertyContainerProperty
        namespace :a

        value_property :latin_font
        value_property :east_asian_font
        value_property :complex_script_font
        property :supplemental_font
        property :extension_list

      end
    end
  end
end
