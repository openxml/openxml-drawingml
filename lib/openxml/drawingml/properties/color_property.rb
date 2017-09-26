module OpenXml
  module DrawingML
    module Properties
      class ColorProperty < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties

        # EG_ColorTransform properties (pg. 3980)
        value_property :tint_transform, as: :color_xform_tint
        value_property :shade_transform, as: :color_xform_shade
        value_property :complement, as: :color_xform_complement
        value_property :inverse, as: :color_xform_inverse
        value_property :grayscale, as: :color_xform_grayscale
        value_property :alpha_transform, as: :color_xform_alpha
        value_property :alpha_offset, as: :color_xform_alpha_offset
        value_property :alpha_modulation, as: :color_xform_alpha_modulation
        value_property :hue_transform, as: :color_xform_hue
        value_property :hue_offset, as: :color_xform_hue_offset
        value_property :hue_modulation, as: :color_xform_hue_modulation
        value_property :saturation_transform, as: :color_xform_saturation
        value_property :saturation_offset, as: :color_xform_saturation_offset
        value_property :saturation_modulation, as: :color_xform_saturation_modulation
        value_property :luminance_transform, as: :color_xform_luminance
        value_property :luminance_offset, as: :color_xform_luminance_offset
        value_property :luminance_modulation, as: :color_xform_luminance_modulation
        value_property :red_transform, as: :color_xform_red
        value_property :red_offset, as: :color_xform_red_offset
        value_property :red_modulation, as: :color_xform_red_modulation
        value_property :green_transform, as: :color_xform_green
        value_property :green_offset, as: :color_xform_green_offset
        value_property :green_modulation, as: :color_xform_green_modulation
        value_property :blue_transform, as: :color_xform_blue
        value_property :blue_offset, as: :color_xform_blue_offset
        value_property :blue_modulation, as: :color_xform_blue_modulation
        value_property :gamma, as: :color_xform_gamma
        value_property :inverse_gamma, as: :color_xform_inverse_gamma

      end
    end
  end
end
