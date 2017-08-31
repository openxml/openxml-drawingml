require "spec_helper"

describe OpenXml::DrawingML::Properties::Stretch do
  include PropertyTestMacros

  it_should_use tag: :stretch, name: "stretch"

  it_should_have_property :fill_rectangle
end
