require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformBlue do
  include ValuePropertyTestMacros

  it_should_use tag: :blue, name: "color_xform_blue", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:blue val=\"10%\"/>"
  end

  with_value("-10.5%") do
    it_should_work
    it_should_output "<a:blue val=\"-10.5%\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
