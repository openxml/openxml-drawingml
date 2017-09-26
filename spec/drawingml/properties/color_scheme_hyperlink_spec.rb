require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorSchemeHyperlink do
  include ValuePropertyTestMacros

  it_should_use tag: :hlink, name: "color_scheme_hyperlink"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
