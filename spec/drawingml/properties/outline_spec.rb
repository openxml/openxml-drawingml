require "spec_helper"

describe OpenXml::DrawingML::Properties::Outline do
  include PropertyTestMacros

  it_should_use tag: :ln, name: "outline"

  it_should_have_properties :solid_fill, :gradient_fill, :pattern_fill, :custom_dash_style,
                            :head_end, :tail_end, :extension_list
  it_should_have_value_properties :no_fill, :preset_dash_style, :use_round_join,
                                  :use_bevel_join, :use_miter_join

  for_attribute(:alignment) do
    %i{ ctr in }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:line_cap) do
    %i{ flat rnd sq }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:compound_line_type) do
    %i{ dbl sng thickThin thinThick tri }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:width) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-100, 20_116_801, :invalid].each do |bad_value|
      it_should_raise_an_exception
    end
  end
end
