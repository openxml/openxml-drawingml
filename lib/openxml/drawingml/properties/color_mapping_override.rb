module OpenXml
  module DrawingML
    module Properties
      class ColorMappingOverride < SimplePropertyContainerProperty
        namespace :a
        tag :clrMapOvr

        property_choice required: true do
          value_property :use_master_color_mapping, as: :color_mapping_override_master
          property :override_map, as: :color_mapping_override_map
        end

      end
    end
  end
end
