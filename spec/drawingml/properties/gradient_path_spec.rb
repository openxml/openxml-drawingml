require "spec_helper"

describe OpenXml::DrawingML::Properties::GradientPath do
  include PropertyTestMacros

  it_should_use tag: :path, name: "gradient_path"

  it_should_have_property :fill_to_rectangle

  for_attribute(:path) do
    %i{ circle rect shape }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

end
