require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformInverse do
  include ValuePropertyTestMacros

  it_should_use tag: :inv, name: "color_xform_inverse", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:inv/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
