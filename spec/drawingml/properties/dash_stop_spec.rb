require "spec_helper"

describe OpenXml::DrawingML::Properties::DashStop do
  include PropertyTestMacros

  it_should_use tag: :ds, name: "dash_stop"

  %i{ dash_length space_length }.each do |attribute|
    for_attribute(attribute) do
      with_value("10%") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      ["-10%", :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end
end
