require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformAlpha do
  include ValuePropertyTestMacros

  it_should_use tag: :alpha, name: "color_xform_alpha", value: "50%"

  with_value("10%") do
    it_should_work
    it_should_output "<a:alpha val=\"10%\"/>"
  end

  with_value("10.5%") do
    it_should_work
    it_should_output "<a:alpha val=\"10.5%\"/>"
  end

  ["-10%", "101%", :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
