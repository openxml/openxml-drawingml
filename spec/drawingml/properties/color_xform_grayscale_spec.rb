require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformGrayscale do
  include ValuePropertyTestMacros

  it_should_use tag: :gray, name: "color_xform_grayscale", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:gray/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
