require "spec_helper"

describe OpenXml::DrawingML::Properties::FillGradient do
  include PropertyTestMacros

  it_should_use tag: :gradFill, name: "fill_gradient"

  it_should_have_properties :gradient_stop_list, :tile_rectangle, :line, :path

  for_attribute(:tile_flip) do
    %i{ none x xy y }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:rotate_with_shape) do
    it_should_behave_like_a_boolean_attribute
  end
end
