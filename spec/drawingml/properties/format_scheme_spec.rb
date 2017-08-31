require "spec_helper"

describe OpenXml::DrawingML::Properties::FormatScheme do
  include PropertyTestMacros

  it_should_use tag: :fmtScheme, name: "format_scheme"

  it_should_have_properties :fill_style_list, :line_style_list, :effect_style_list,
                            :background_fill_style_list

  for_attribute(:scheme_name) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
