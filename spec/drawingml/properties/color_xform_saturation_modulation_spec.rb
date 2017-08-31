require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformSaturationModulation do
  include ValuePropertyTestMacros

  it_should_use tag: :satMod, name: "color_xform_saturation_modulation", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:satMod val=\"10%\"/>"
  end

  with_value("-10.5%") do
    it_should_work
    it_should_output "<a:satMod val=\"-10.5%\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
