require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletFont do
  include ValuePropertyTestMacros

  it_should_use tag: :buFont, name: "bullet_font", value: "Cambria"

  with_value("Cambria") do
    it_should_work
    it_should_output "<a:buFont typeface=\"Cambria\"/>"
  end
end
