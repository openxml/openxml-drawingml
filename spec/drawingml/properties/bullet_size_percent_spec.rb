require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletSizePercent do
  include ValuePropertyTestMacros

  it_should_use tag: :buSzPct, name: "bullet_size_percent", value: "50%"

  with_value("100%") do
    it_should_work
    it_should_output "<a:buSzPct val=\"100%\"/>"
  end

  with_value("401%") do
    it_should_not_work
  end
end
