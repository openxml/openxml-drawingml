require "spec_helper"

describe OpenXml::DrawingML::Properties::MinorFont do
  include PropertyTestMacros

  it_should_use tag: :minorFont, name: "minor_font"

  it_should_have_properties :supplemental_font, :extension_list
  it_should_have_value_properties :latin_font, :east_asian_font, :complex_script_font
end
