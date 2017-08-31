require "spec_helper"

describe OpenXml::DrawingML::Properties::UnderlineFillText do
  include ValuePropertyTestMacros

  it_should_use tag: :uFillTx, name: "underline_fill_text", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:uFillTx/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
