require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletStyleBlip do
  include PropertyTestMacros

  it_should_use tag: :buBlip, name: "bullet_style_blip"
end
