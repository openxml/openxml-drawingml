require "spec_helper"

describe OpenXml::DrawingML::Properties::AutofitNormal do
  include PropertyTestMacros

  it_should_use tag: :normAutofit, name: "autofit_normal"

  for_attribute(:font_scale) do
    it_should_assign_and_output_xml "90%"
    it_should_not_allow_invalid_value
  end

  for_attribute(:line_space_reduction) do
    it_should_assign_and_output_xml "90%"
    it_should_not_allow_invalid_value
  end
end
