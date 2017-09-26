require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformSaturationOffset do
  include ValuePropertyTestMacros

  it_should_use tag: :satOff, name: "color_xform_saturation_offset", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:satOff val=\"10%\"/>"
  end

  with_value("-10.5%") do
    it_should_work
    it_should_output "<a:satOff val=\"-10.5%\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
