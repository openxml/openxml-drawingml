require "spec_helper"

describe OpenXml::DrawingML::Properties::PresetTextWarp do
  include PropertyTestMacros

  it_should_use tag: :prstTxWarp, name: "preset_text_warp"

  for_attribute(:preset) do
    with_value(:textDeflateInflateDeflate) do # Not Exhaustive
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
