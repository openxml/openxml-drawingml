require "spec_helper"

describe OpenXml::DrawingML::Properties::Level9ParagraphProperties do
  include PropertyTestMacros

  it_should_use tag: :lvl9pPr, name: "level9_paragraph_properties"

  it_should_have_properties :line_spacing, :space_before, :space_after, :bullet_color,
                            :autonumbered_bullets, :character_bullets, :blip_bullets,
                            :tab_list, :default_run_properties, :extension_list
  it_should_have_value_properties :bullet_color_matches_text, :bullet_size_matches_text,
                                  :bullet_size_percent, :bullet_size_points,
                                  :bullet_font_matches_text, :bullet_font, :disable_bullets



  %i{ east_asian_line_break hanging_punctuation
      latin_line_break right_to_left }.each do |boolean_attr|
    for_attribute(boolean_attr) do
      it_should_behave_like_a_boolean_attribute
    end
  end

  for_attribute(:alignment) do
    %i{ ctr dist just justLow l r thaiDist }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:default_tab_size) do
    with_value(500) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    with_value("-5mm") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:vertical_alignment) do
    %i{ auto b base ctr t }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:indent) do
    [500, "-5mm"].each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    [51_206_401, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  for_attribute(:level) do
    (0..8).each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    [-1, 9].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end

  %i{ left_margin right_margin }.each do |margin|
    for_attribute(margin) do
      [500, "5mm"].each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      ["-5mm", -1, 51_206_401, :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end
end
