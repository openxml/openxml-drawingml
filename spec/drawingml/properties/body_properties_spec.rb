require "spec_helper"

describe OpenXml::DrawingML::Properties::BodyProperties do
  include PropertyTestMacros

  it_should_use tag: :bodyPr, name: "body_properties"

  it_should_have_properties :preset_text_warp, :normal_autofit, :scene_3d, :extension_list
  it_should_have_value_properties :no_autofit, :shape_autofit, :exclude_text_from_3d

  for_attribute(:anchor) do
    %i{ b ctr dist just t }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  %i{ anchor_center compatible_line_spacing force_antialias from_word_art
      columns_right_to_left respect_paragraph_spacing text_stays_upright }.each do |boolean_attr|
    for_attribute(boolean_attr) do
      it_should_behave_like_a_boolean_attribute
    end
  end

  %i{ bottom_inset left_inset right_inset top_inset }.each do |coordinate_attr|
    for_attribute(coordinate_attr) do
      with_value("10cm") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      with_value("-10cm") do
        it_should_assign_successfully
        it_should_output_expected_xml
      end

      it_should_not_allow_invalid_value
    end
  end

  for_attribute(:horizontal_overflow) do
    %i{ clip overflow }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:number_of_columns) do
    (1..16).each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    with_value(17) do
      it_should_raise_an_exception
    end
  end

  for_attribute(:rotation) do
    with_value(20) do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    it_should_not_allow_floats
  end

  for_attribute(:column_spacing) do
    with_value("10cm") do
      it_should_assign_successfully
      it_should_output_expected_xml
    end

    with_value("-10cm") do
      it_should_raise_an_exception
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:vertical_text) do
    %i{ eaVert horz mongolianVert vert vert270 wordArtVert wordArtVertRtl }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:vertical_overflow) do
    %i{ clip ellipsis overflow }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  for_attribute(:wrap) do
    %i{ none square }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end
end
