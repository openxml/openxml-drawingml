require "spec_helper"

describe OpenXml::DrawingML::Properties::LineSpacing do
  include PropertyTestMacros

  it_should_use tag: :lnSpc, name: "line_spacing"

  it_should_have_value_properties :percent, :points
end
