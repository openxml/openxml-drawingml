require "spec_helper"

describe OpenXml::DrawingML::Properties::GraphicData do
  include PropertyTestMacros

  it_should_use tag: :graphicData, name: "graphic_data"

  for_attribute(:uri) do
    with_value("http://a_uri.com") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
