require "spec_helper"

describe OpenXml::DrawingML::Properties::BackgroundFillStyleList do
  include PropertyTestMacros

  it_should_use tag: :bgFillStyleLst, name: "background_fill_style_list"
end
