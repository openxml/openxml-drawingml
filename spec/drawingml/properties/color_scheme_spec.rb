require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorScheme do
  include PropertyTestMacros

  it_should_use tag: :clrScheme, name: "color_scheme"

  it_should_have_properties :dark_one, :light_one, :dark_two, :light_two, :accent_one,
                            :accent_two, :accent_three, :accent_four, :accent_five,
                            :accent_six, :hyperlink, :followed_hyperlink, :extension_list

  for_attribute(:scheme_name) do
    with_value("A Name") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
