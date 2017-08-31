require "spec_helper"

describe OpenXml::DrawingML::Properties::FillNone do
  include ValuePropertyTestMacros

  it_should_use tag: :noFill, name: "fill_none", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:noFill/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
