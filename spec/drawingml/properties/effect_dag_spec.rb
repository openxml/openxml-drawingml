require "spec_helper"

describe OpenXml::DrawingML::Properties::EffectDag do
  include PropertyTestMacros

  it_should_use tag: :effectDag, name: "effect_dag"

  for_attribute(:dag_name) do
    with_value("A String") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:type) do
    %i{ sib tree }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end
end
