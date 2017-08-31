require "spec_helper"

describe OpenXml::DrawingML::Properties::UnderlineFill do
  include PropertyTestMacros

  it_should_use tag: :uFill, name: "underline_fill"

  it_should_have_properties :solid_fill, :gradient_fill, :pattern_fill, :blip_fill
  it_should_have_value_properties :no_fill, :inherit_group_fill
end
