require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSchemeAccentSix do
  include ValuePropertyTestMacros

  it_should_use tag: :accent6, name: "color_scheme_accent_six"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
