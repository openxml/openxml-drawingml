require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformInverseGamma do
  include ValuePropertyTestMacros

  it_should_use tag: :invGamma, name: "color_xform_inverse_gamma", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:invGamma/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
