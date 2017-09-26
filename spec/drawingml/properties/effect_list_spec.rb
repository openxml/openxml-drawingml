require "spec_helper"

describe OpenXml::DrawingML::Properties::EffectList do
  include PropertyTestMacros

  it_should_use tag: :effectLst, name: "effect_list"
end
