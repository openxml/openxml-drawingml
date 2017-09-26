require "spec_helper"

describe OpenXml::DrawingML::Properties::ExtraColorScheme do
  include PropertyTestMacros

  it_should_use tag: :extraClrScheme, name: "extra_color_scheme"

  it_should_have_properties :color_scheme, :color_mapping
end
