require "spec_helper"

describe OpenXml::DrawingML::Properties::PresetGeometry do
  include PropertyTestMacros

  it_should_use tag: :prstGeom, name: "preset_geometry"

  it_should_have_property :shape_adjustment_list

  for_attribute(:shape) do
    with_value(:flowChartPunchedTape) do # Not Exhaustive
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
