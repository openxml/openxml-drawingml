require "spec_helper"

describe OpenXml::DrawingML::Properties::TabStop do
  include PropertyTestMacros

  it_should_use tag: :tab, name: "tab_stop"

  for_attribute(:alignment) do
    %i{ ctr dec l r }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:position) do
    [100, -100, "5mm", "-5mm"].each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end
end
