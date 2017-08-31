require "spec_helper"

describe OpenXml::DrawingML::Properties::HyperlinkHover do
  include PropertyTestMacros

  it_should_use tag: :hlinkHover, name: "hyperlink_hover"

  it_should_have_properties :embedded_sound_file, :extension_list

  %i{ ends_sounds visited add_to_history }.each do |boolean_attribute|
    for_attribute(boolean_attribute) do
      it_should_behave_like_a_boolean_attribute
    end
  end

  %i{ action invalid_url target_frame tooltip }.each do |string_attribute|
    for_attribute(string_attribute) do
      with_value("A String") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end

  for_attribute(:id) do
    with_value("rId256") do
      it_should_assign_successfully
      it_should_output "<a:hlinkHover r:id=\"rId256\"/>"
    end

    it_should_not_allow_invalid_value
  end
end
