require "spec_helper"

describe OpenXml::DrawingML::Properties::FillBlip do
  include PropertyTestMacros

  it_should_use tag: :blipFill, name: "fill_blip"

  it_should_have_properties :blip, :source_rectangle, :tile, :stretch

  for_attribute(:dpi) do
    with_value(300) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-200, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end
end
