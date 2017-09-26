require "spec_helper"

describe OpenXml::DrawingML::Properties::FillPattern do
  include PropertyTestMacros

  it_should_use tag: :pattFill, name: "fill_pattern"

  for_attribute(:pattern) do
    with_value(:solidDmnd) do # Not Exhaustive
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
