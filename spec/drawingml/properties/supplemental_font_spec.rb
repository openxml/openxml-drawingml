require "spec_helper"

describe OpenXml::DrawingML::Properties::SupplementalFont do
  include PropertyTestMacros

  it_should_use tag: :font, name: "supplemental_font"

  for_attribute(:typeface) do
    with_value("Cambria") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:script) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
