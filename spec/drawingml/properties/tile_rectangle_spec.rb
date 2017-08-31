require "spec_helper"

describe OpenXml::DrawingML::Properties::TileRectangle do
  include PropertyTestMacros

  it_should_use tag: :tileRect, name: "tile_rectangle"

  %i{ bottom_offset left_offset right_offset top_offset }.each do |attribute|
    for_attribute(attribute) do
      with_value("50%") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end
end
