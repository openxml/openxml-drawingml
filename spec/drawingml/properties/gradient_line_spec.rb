require "spec_helper"

describe OpenXml::DrawingML::Properties::GradientLine do
  include PropertyTestMacros

  it_should_use tag: :lin, name: "gradient_line"

  for_attribute(:angle) do
    with_value(500) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-50, 21_600_001, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:scaled) do
    it_should_behave_like_a_boolean_attribute
  end
end
