require "spec_helper"

describe OpenXml::DrawingML::Properties::DefaultRunProperties do
  include PropertyTestMacros

  it_should_use tag: :defRPr, name: "default_run_properties"

  it_should_have_properties :outline, :solid_fill, :gradient_fill, :pattern_fill,
                            :blip_fill, :effect_list, :effect_dag, :underline,
                            :underline_fill, :hyperlink_click, :hyperlink_mouse_over,
                            :extension_list
  it_should_have_value_properties :no_fill, :inherit_group_fill, :underline_inherits,
                                  :underline_fill_inherits, :latin_font, :east_asian_font,
                                  :complex_script_font, :symbol_font, :right_to_left

  %i{ bold dirty spelling_error italic kumimoji no_proofing
      normalize_heights smart_tag_clean }.each do |boolean_attribute|
    for_attribute(boolean_attribute) do
      it_should_behave_like_a_boolean_attribute
    end
  end

  %i{ alternative_language bookmark_target language }.each do |string_attribute|
    for_attribute(string_attribute) do
      with_value("A String") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end

  for_attribute(:baseline) do
    with_value("50%") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:capitalization) do
    %i{ all none small }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:kerning) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-100, 400_001, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:smart_tag_id) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-100, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:spacing) do
    [100, -100].each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    [-400_001, 400_001, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:strikethrough) do
    %i{ dblStrike noStrike sngStrike }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:font_size) do
    with_value(100) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    [-100, 400_001, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:underline_style) do
    with_value(:dotDotDashHeavy) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end
end
