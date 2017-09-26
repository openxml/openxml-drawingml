require "spec_helper"

describe OpenXml::DrawingML::Properties::TextDefault do
  include PropertyTestMacros

  it_should_use tag: :txDef, name: "text_default"

  it_should_have_properties :shape_properties, :body_properties, :list_style, :extension_list
end
