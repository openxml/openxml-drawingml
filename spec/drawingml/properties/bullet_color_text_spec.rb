require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletColorText do
  include ValuePropertyTestMacros

  it_should_use tag: :buClrTx, name: "bullet_color_text", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:buClrTx/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
