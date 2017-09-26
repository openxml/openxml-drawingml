require "spec_helper"

describe OpenXml::DrawingML::Properties::HeadEnd do
  include PropertyTestMacros

  it_should_use tag: :headEnd, name: "head_end"

  %i{ length width }.each do |size_attribute|
    for_attribute(size_attribute) do
      %i{ sm med lg }.each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      it_should_not_allow_invalid_value
    end
  end
end
