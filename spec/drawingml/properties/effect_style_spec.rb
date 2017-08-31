require "spec_helper"

describe OpenXml::DrawingML::Properties::EffectStyle do
  include PropertyTestMacros

  it_should_use tag: :effectStyle, name: "effect_style"

  it_should_have_properties :effect_list, :effect_dag, :scene_3d # , :sp3d
end
