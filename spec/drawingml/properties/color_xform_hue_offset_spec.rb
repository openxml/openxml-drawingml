require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformHueOffset do
  include ValuePropertyTestMacros

  it_should_use tag: :hueOff, name: "color_xform_hue_offset", value: 50

  with_value(10) do
    it_should_work
    it_should_output "<a:hueOff val=\"10\"/>"
  end

  with_value(-10) do
    it_should_work
    it_should_output "<a:hueOff val=\"-10\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
