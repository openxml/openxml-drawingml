module OpenXml
  module DrawingML
    module Properties
      class StyleMatrixReferenceProperty < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        attribute :index, displays_as: :idx, expects: :positive_integer, required: true

        property_choice required: true do
          property :component_rgb, as: :color_component_rgb
          value_property :rgb, as: :color_hex_rgb
          property :hsl, as: :color_hsl
          value_property :system_color, as: :color_system_color
          value_property :scheme_color, as: :color_scheme_color
          value_property :preset_color, as: :color_preset_color
        end

      end
    end
  end
end
