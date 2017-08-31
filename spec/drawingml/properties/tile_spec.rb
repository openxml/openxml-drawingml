require "spec_helper"

describe OpenXml::DrawingML::Properties::Tile do
  include PropertyTestMacros

  it_should_use tag: :tile, name: "tile"

  for_attribute(:alignment) do
    %i{ b bl br ctr l r t tl tr }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:flip) do
    %i{ none x xy y }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  %i{ horizontal_ratio vertical_ratio }.each do |percentage_attribute|
    for_attribute(percentage_attribute) do
      with_value("50%") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      [50, "50", :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end

  %i{ horizontal_offset vertical_offset }.each do |coordinate_attribute|
    for_attribute(coordinate_attribute) do
      [500, -500, "5mm", "-5.5mm"].each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      it_should_not_allow_invalid_value
    end
  end
end
