require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletStyleNone do
  include ValuePropertyTestMacros

  it_should_use tag: :buNone, name: "bullet_style_none", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:buNone/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
