require "spec_helper"

describe OpenXml::DrawingML::Properties::Extent do
  include PropertyTestMacros

  it_should_use tag: :ext, name: "extent"

  %i{ cx cy }.each do |coordinate_attribute|
    for_attribute(coordinate_attribute) do
      [500, "5mm"].each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      [-500, "-5mm", :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end
end
