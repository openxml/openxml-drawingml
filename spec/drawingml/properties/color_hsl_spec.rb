require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorHsl do
  include PropertyTestMacros

  it_should_use tag: :hslClr, name: "color_hsl"

  it_should_have_value_properties :tint_transform, :shade_transform, :complement,
                                  :inverse, :grayscale, :alpha_transform, :alpha_offset,
                                  :alpha_modulation, :hue_transform, :hue_offset, :hue_modulation,
                                  :saturation_transform, :saturation_offset, :saturation_modulation,
                                  :luminance_transform, :luminance_offset, :luminance_modulation,
                                  :red_transform, :red_offset, :red_modulation, :green_transform,
                                  :green_offset, :green_modulation, :blue_transform, :blue_offset,
                                  :blue_modulation, :gamma, :inverse_gamma

  for_attribute(:hue) do
    with_value(1000) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-1, 21_600_001, :not_an_integer].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  %i{ luminance saturation }.each do |color_attr|
    for_attribute(color_attr) do
      with_value("30%") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end
end
