module OpenXml
  module DrawingML
    module Properties
      class ListStyle < SimplePropertyContainerProperty
        namespace :a
        tag :lstStyle

        property :default_paragraph_properties
        property :level1_paragraph_properties
        property :level2_paragraph_properties
        property :level3_paragraph_properties
        property :level4_paragraph_properties
        property :level5_paragraph_properties
        property :level6_paragraph_properties
        property :level7_paragraph_properties
        property :level8_paragraph_properties
        property :level9_paragraph_properties

        property :extension_list

      end
    end
  end
end
