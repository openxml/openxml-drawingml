require "spec_helper"

describe OpenXml::DrawingML::Properties::VideoFile do
  include PropertyTestMacros

  it_should_use tag: :videoFile, name: "video_file"

  it_should_have_property :extension_list

  for_attribute(:content_type) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:link) do
    with_value("rId256") do
      it_should_assign_successfully
      it_should_output "<a:videoFile r:link=\"rId256\"/>"
    end

    it_should_not_allow_invalid_value
  end
end
