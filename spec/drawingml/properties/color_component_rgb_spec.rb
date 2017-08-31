require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorComponentRgb do
  include PropertyTestMacros

  it_should_use tag: :scrgbClr, name: "color_component_rgb"

  it_should_have_value_properties :tint_transform, :shade_transform, :complement,
                                  :inverse, :grayscale, :alpha_transform, :alpha_offset,
                                  :alpha_modulation, :hue_transform, :hue_offset, :hue_modulation,
                                  :saturation_transform, :saturation_offset, :saturation_modulation,
                                  :luminance_transform, :luminance_offset, :luminance_modulation,
                                  :red_transform, :red_offset, :red_modulation, :green_transform,
                                  :green_offset, :green_modulation, :blue_transform, :blue_offset,
                                  :blue_modulation, :gamma, :inverse_gamma

  %i{ red green blue }.each do |color_attr|
    for_attribute(color_attr) do
      with_value("30%") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end
end
