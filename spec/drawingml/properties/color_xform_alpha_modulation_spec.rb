require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformAlphaModulation do
  include ValuePropertyTestMacros

  it_should_use tag: :alphaMod, name: "color_xform_alpha_modulation", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:alphaMod val=\"10%\"/>"
  end

  with_value("10.5%") do
    it_should_work
    it_should_output "<a:alphaMod val=\"10.5%\"/>"
  end

  ["-10%", :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
