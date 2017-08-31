require "spec_helper"

describe OpenXml::DrawingML::Properties::Scene3d do
  include PropertyTestMacros

  it_should_use tag: :scene3d, name: "scene_3d"

  it_should_have_property :extension_list
end
