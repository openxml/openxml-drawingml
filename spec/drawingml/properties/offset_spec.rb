require "spec_helper"

describe OpenXml::DrawingML::Properties::Offset do
  include PropertyTestMacros

  it_should_use tag: :off, name: "offset"

  %i{ x y }.each do |coordinate_attribute|
    for_attribute(coordinate_attribute) do
      [500, "5mm", "-5mm"].each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      it_should_not_allow_invalid_value
    end
  end
end
