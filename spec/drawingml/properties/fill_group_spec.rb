require "spec_helper"

describe OpenXml::DrawingML::Properties::FillGroup do
  include ValuePropertyTestMacros

  it_should_use tag: :grpFill, name: "fill_group", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:grpFill/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
