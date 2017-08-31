require "spec_helper"

describe OpenXml::DrawingML::Properties::Graphic do
  include PropertyTestMacros

  it_should_use tag: :graphic, name: "graphic"

  it_should_have_property :data
end
