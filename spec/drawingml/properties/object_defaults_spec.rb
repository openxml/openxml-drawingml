require "spec_helper"

describe OpenXml::DrawingML::Properties::ObjectDefaults do
  include PropertyTestMacros

  it_should_use tag: :objectDefaults, name: "object_defaults"

  it_should_have_properties :shape_default, :line_default, :text_default, :extension_list
end
