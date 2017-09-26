require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformHueModulation do
  include ValuePropertyTestMacros

  it_should_use tag: :hueMod, name: "color_xform_hue_modulation", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:hueMod val=\"10%\"/>"
  end

  with_value("10.5%") do
    it_should_work
    it_should_output "<a:hueMod val=\"10.5%\"/>"
  end

  ["-10%", :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
