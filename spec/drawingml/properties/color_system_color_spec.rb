require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSystemColor do
  include PropertyTestMacros

  it_should_use tag: :sysClr, name: "color_system_color", value: :activeBorder

  it_should_have_value_properties :tint_transform, :shade_transform, :complement,
                                  :inverse, :grayscale, :alpha_transform, :alpha_offset,
                                  :alpha_modulation, :hue_transform, :hue_offset, :hue_modulation,
                                  :saturation_transform, :saturation_offset, :saturation_modulation,
                                  :luminance_transform, :luminance_offset, :luminance_modulation,
                                  :red_transform, :red_offset, :red_modulation, :green_transform,
                                  :green_offset, :green_modulation, :blue_transform, :blue_offset,
                                  :blue_modulation, :gamma, :inverse_gamma, value: :activeBorder

  for_attribute(:value) do
    with_value(:activeBorder) do # Not exhaustive
      it_should_assign_successfully :captionText
      it_should_output_expected_xml :captionText
    end
  end

  for_attribute(:last_color) do
    with_value("AA0033") do
      it_should_assign_successfully :captionText
      it_should_output "<a:sysClr val=\"captionText\" lastClr=\"AA0033\"/>", :captionText
    end
  end
end
