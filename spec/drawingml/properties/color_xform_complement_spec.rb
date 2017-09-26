require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorXformComplement do
  include ValuePropertyTestMacros

  it_should_use tag: :comp, name: "color_xform_complement", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:comp/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
