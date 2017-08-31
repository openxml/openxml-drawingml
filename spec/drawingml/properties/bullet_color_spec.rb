require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletColor do
  include ValuePropertyTestMacros

  it_should_use tag: :buClr, name: "bullet_color"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
