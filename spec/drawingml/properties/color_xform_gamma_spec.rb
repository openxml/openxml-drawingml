require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformGamma do
  include ValuePropertyTestMacros

  it_should_use tag: :gamma, name: "color_xform_gamma", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:gamma/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
