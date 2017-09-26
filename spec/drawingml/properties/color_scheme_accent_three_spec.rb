require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSchemeAccentThree do
  include ValuePropertyTestMacros

  it_should_use tag: :accent3, name: "color_scheme_accent_three"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
