module OpenXml
  module DrawingML
    module Properties
      class ParagraphProperties < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :pPr

        attribute :alignment, displays_as: :algn, one_of: %i{ ctr dist just justLow l r thaiDist }
        attribute :default_tab_size, displays_as: :defTabSz, expects: :coordinate
        attribute :east_asian_line_break, displays_as: :eaLnBrk, expects: :boolean
        attribute :vertical_alignment, displays_as: :fontAlgn, one_of: %i{ auto b base ctr t }
        attribute :hanging_punctuation, displays_as: :hangingPunct, expects: :boolean
        attribute :indent, expects: :indent_range
        attribute :latin_line_break, displays_as: :latinLnBrk, expects: :boolean
        attribute :level, displays_as: :lvl, in_range: 0..8
        attribute :left_margin, displays_as: :marL, expects: :text_margin
        attribute :right_margin, displays_as: :marR, expects: :text_margin
        attribute :right_to_left, displays_as: :rtl, expects: :boolean

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

      private

        def coordinate(value)
          message = "Invalid coordinate: Must either be an integer or include units"
          is_integer = value.is_a?(Integer)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
          raise ArgumentError, message unless is_integer || is_measure
        end

        def indent_range(value)
          message = "Invalid indentation range: Must be an integer between -51,206,400 and 51,206,400 or include units"
          is_integer_in_range = value.is_a?(Integer) && (-51_206_400..51_206_400).cover?(value)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
          raise ArgumentError, message unless is_integer_in_range || is_measure
        end

        def text_margin(value)
          message = "Invalid text margin: Must be an integer between 0 and 51,206,400 or include units"
          is_integer_in_range = value.is_a?(Integer) && (0..51_206_400).cover?(value)
          is_measure = value.is_a?(String) && value =~ OpenXml::DrawingML::ST_PositiveUniversalMeasure
          raise ArgumentError, message unless is_integer_in_range || is_measure
        end

      end
    end
  end
end
