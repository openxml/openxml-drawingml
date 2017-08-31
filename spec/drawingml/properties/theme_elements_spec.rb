require "spec_helper"

describe OpenXml::DrawingML::Properties::ThemeElements do
  include PropertyTestMacros

  it_should_use tag: :themeElements, name: "theme_elements"

  it_should_have_property :color_scheme, :font_scheme, :format_scheme, :extension_list
end
