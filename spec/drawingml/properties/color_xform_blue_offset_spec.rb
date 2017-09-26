require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformBlueOffset do
  include ValuePropertyTestMacros

  it_should_use tag: :blueOff, name: "color_xform_blue_offset", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:blueOff val=\"10%\"/>"
  end

  with_value("-10.5%") do
    it_should_work
    it_should_output "<a:blueOff val=\"-10.5%\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
