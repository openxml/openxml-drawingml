require "spec_helper"

describe OpenXml::DrawingML::Properties::Highlight do
  include ValuePropertyTestMacros

  it_should_use tag: :highlight, name: "highlight"

  it_should_have_properties :component_rgb, :hsl
  it_should_have_value_properties :rgb, :system_color, :scheme_color, :preset_color
end
