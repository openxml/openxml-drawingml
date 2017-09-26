require "spec_helper"

describe OpenXml::DrawingML::Properties::AudioCdStart do
  include PropertyTestMacros

  it_should_use tag: :st, name: "audio_cd_start"

  for_attribute(:track) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-1, 256, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:time) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-1, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end
end
