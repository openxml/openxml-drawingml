require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSchemeDarkOne do
  include ValuePropertyTestMacros

  it_should_use tag: :dk1, name: "color_scheme_dark_one"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
