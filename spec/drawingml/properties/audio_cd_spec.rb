require "spec_helper"

describe OpenXml::DrawingML::Properties::AudioCd do
  include PropertyTestMacros

  it_should_use tag: :audioCd, name: "audio_cd"

  it_should_have_properties :start, :end, :extension_list
end
