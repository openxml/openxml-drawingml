require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletStyleAutoNumbered do
  include PropertyTestMacros

  it_should_use tag: :buAutoNum, name: "bullet_style_auto_numbered"

  for_attribute(:start_at) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [0, 32_768].each do |out_of_range|
      with_value(out_of_range) do
        it_should_raise_an_exception
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:type) do
    %i{ alphaLcParenBoth alphaLcParenR alphaLcPeriod }.each do |good_value| # Not exhaustive
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end
end
