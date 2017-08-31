require "spec_helper"

describe OpenXml::DrawingML::Properties::FlatText do
  include PropertyTestMacros

  it_should_use tag: :flatTx, name: "flat_text", value: true

  for_attribute(:z) do
    [100, -100, "5cm", "-5.5cm"].each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully true
        it_should_output_expected_xml true
      end
    end

    it_should_not_allow_invalid_value
  end
end
