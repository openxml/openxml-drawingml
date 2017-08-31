require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSchemeAccentOne do
  include ValuePropertyTestMacros

  it_should_use tag: :accent1, name: "color_scheme_accent_one"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
