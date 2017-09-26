require "spec_helper"

describe OpenXml::DrawingML::Properties::EmbeddedSoundFile do
  include PropertyTestMacros

  it_should_use tag: :snd, name: "embedded_sound_file"

  for_attribute(:embed) do
    with_value("rId256") do
      it_should_assign_successfully
      it_should_output "<a:snd r:embed=\"rId256\"/>"
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:sound_name) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
