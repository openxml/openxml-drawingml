require "spec_helper"

describe OpenXml::DrawingML::Properties::UnderlineText do
  include ValuePropertyTestMacros

  it_should_use tag: :uLnTx, name: "underline_text", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:uLnTx/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
