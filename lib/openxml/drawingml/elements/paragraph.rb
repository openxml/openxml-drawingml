module OpenXml
  module DrawingML
    module Elements
      class Paragraph < OpenXml::Element
        include HasChildren
        include HasProperties
        namespace :a
        tag :p

        # Validations
        coordinate = lambda do |value|
          message = "Invalid coordinate: Must either be an integer or include units"
          is_integer = value.is_a?(Integer)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
          raise ArgumentError, message unless is_integer || is_measure
        end

        indent_range = lambda do |value|
          message = "Invalid indentation range: Must be an integer between -51,206,400 and 51,206,400 or include units"
          is_integer_in_range = value.is_a?(Integer) && (-51_206_400..51_206_400).cover?(value)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
          raise ArgumentError, message unless is_integer_in_range || is_measure
        end

        text_margin = lambda do |value|
          message = "Invalid text margin: Must be an integer between 0 and 51,206,400 or include units"
          is_integer_in_range = value.is_a?(Integer) && (0..51_206_400).cover?(value)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_PositiveUniversalMeasure
          raise ArgumentError, message unless is_integer_in_range || is_measure
        end

        properties_attribute :alignment, displays_as: :algn, one_of: %i{ ctr dist just justLow l r thaiDist }
        properties_attribute :default_tab_size, displays_as: :defTabSz, validation: coordinate
        properties_attribute :east_asian_line_break, displays_as: :eaLnBrk, expects: :boolean
        properties_attribute :vertical_alignment, displays_as: :fontAlgn, one_of: %i{ auto b base ctr t }
        properties_attribute :hanging_punctuation, displays_as: :hangingPunct, expects: :boolean
        properties_attribute :indent, validation: indent_range
        properties_attribute :latin_line_break, displays_as: :latinLnBrk, expects: :boolean
        properties_attribute :level, displays_as: :lvl, in_range: 0..8
        properties_attribute :left_margin, displays_as: :marL, validation: text_margin
        properties_attribute :right_margin, displays_as: :marR, validation: text_margin
        properties_attribute :right_to_left, displays_as: :rtl, expects: :boolean

        property :line_spacing
        property :space_before
        property :space_after

        property_choice do
          property :bullet_color
          value_property :bullet_color_matches_text, as: :bullet_color_text
        end

        property_choice do
          value_property :bullet_size_matches_text, as: :bullet_size_text
          value_property :bullet_size_percent
          value_property :bullet_size_points
        end

        property_choice do
          value_property :bullet_font_matches_text, as: :bullet_font_text
          value_property :bullet_font
        end

        property_choice do
          value_property :disable_bullets, as: :bullet_style_none
          property :autonumbered_bullets, as: :bullet_style_auto_numbered
          property :character_bullets, as: :bullet_style_character
          property :blip_bullets, as: :bullet_style_blip
        end

        property :tab_list
        property :default_run_properties
        property :extension_list

      end
    end
  end
end
