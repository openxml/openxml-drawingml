require "spec_helper"

describe OpenXml::DrawingML::Properties::RightToLeft do
  include ValuePropertyTestMacros

  it_should_use tag: :rtl, name: "right_to_left", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:rtl/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
