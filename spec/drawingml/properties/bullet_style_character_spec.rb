require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletStyleCharacter do
  include PropertyTestMacros

  it_should_use tag: :buChar, name: "bullet_style_character"

  for_attribute(:character) do
    with_value("c") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
