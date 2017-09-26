require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformHue do
  include ValuePropertyTestMacros

  it_should_use tag: :hue, name: "color_xform_hue", value: 50

  with_value(10) do
    it_should_work
    it_should_output "<a:hue val=\"10\"/>"
  end

  [-10, 21_600_001, :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
