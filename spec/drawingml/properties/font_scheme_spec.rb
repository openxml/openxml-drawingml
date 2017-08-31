require "spec_helper"

describe OpenXml::DrawingML::Properties::FontScheme do
  include PropertyTestMacros

  it_should_use tag: :fontScheme, name: "font_scheme"

  it_should_have_properties :major_font, :minor_font, :extension_list

  for_attribute(:scheme_name) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
