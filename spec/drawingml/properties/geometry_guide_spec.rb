require "spec_helper"

describe OpenXml::DrawingML::Properties::GeometryGuide do
  include PropertyTestMacros

  it_should_use tag: :gd, name: "geometry_guide"

  %i{ guide_name formula }.each do |string_attribute|
    for_attribute(string_attribute) do
      with_value("A String") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end
end
