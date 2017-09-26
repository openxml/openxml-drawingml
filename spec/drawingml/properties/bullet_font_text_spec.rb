require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletFontText do
  include ValuePropertyTestMacros

  it_should_use tag: :buFontTx, name: "bullet_font_text", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:buFontTx/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
