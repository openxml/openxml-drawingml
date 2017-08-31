require "spec_helper"

describe OpenXml::DrawingML::Properties::GradientStop do
  include PropertyTestMacros

  it_should_use tag: :gs, name: "gradient_stop"

  for_attribute(:position) do
    with_value("50%") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    ["-50%", "101%", 50, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end
end
