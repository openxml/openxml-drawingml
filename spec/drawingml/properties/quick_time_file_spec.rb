require "spec_helper"

describe OpenXml::DrawingML::Properties::QuickTimeFile do
  include PropertyTestMacros

  it_should_use tag: :quickTimeFile, name: "quick_time_file"

  it_should_have_property :extension_list

  for_attribute(:link) do
    with_value("rId256") do
      it_should_assign_successfully
      it_should_output "<a:quickTimeFile r:link=\"rId256\"/>"
    end

    it_should_not_allow_invalid_value
  end
end
