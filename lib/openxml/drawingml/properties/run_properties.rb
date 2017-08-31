module OpenXml
  module DrawingML
    module Properties
      class RunProperties < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :rPr

        UNDERLINE_STYLES = %i{
          dash dashHeavy dashLong dashLongHeavy dbl dotDash dotDashHeavy
          dotDotDash dotDotDashHeavy dotted dottedHeavy heavy none sng wavy
          wavyDbl wavyHeavy words
        }.freeze

        attribute :alternative_language, displays_as: :altLang, expects: :string
        attribute :bold, displays_as: :b, expects: :boolean
        attribute :baseline, expects: :percentage
        attribute :bookmark_target, displays_as: :bmk, expects: :string
        attribute :capitalization, displays_as: :cap, one_of: %i{ all none small }
        attribute :dirty, expects: :boolean
        attribute :spelling_error, displays_as: :err, expects: :boolean
        attribute :italic, displays_as: :i, expects: :boolean
        attribute :kerning, displays_as: :kern, expects: :integer, in_range: (0..400_000)
        attribute :kumimoji, expects: :boolean
        attribute :language, displays_as: :lang, expects: :string
        attribute :no_proofing, displays_as: :noProof, expects: :boolean
        attribute :normalize_heights, displays_as: :normalizeH, expects: :boolean
        attribute :smart_tag_clean, displays_as: :smtClean, expects: :boolean
        attribute :smart_tag_id, displays_as: :smtId, expects: :positive_integer
        attribute :spacing, displays_as: :spc, expects: :point
        attribute :strikethrough, displays_as: :strike, one_of: %i{ dblStrike noStrike sngStrike }
        attribute :font_size, displays_as: :sz, expects: :integer, in_range: (100..400_000)
        attribute :underline_style, displays_as: :u, one_of: UNDERLINE_STYLES

        property :outline

        property_choice do
          value_property :no_fill, as: :fill_none
          property :solid_fill, as: :fill_solid
          property :gradient_fill, as: :fill_gradient
          property :pattern_fill, as: :fill_pattern
          property :blip_fill, as: :fill_blip
          value_property :inherit_group_fill, as: :fill_group
        end

        property_choice do
          property :effect_list
          property :effect_dag
        end

        property :highlight

        property_choice do
          value_property :underline_inherits, as: :underline_text
          property :underline
        end

        property_choice do
          value_property :underline_fill_inherits, as: :underline_fill_text
          property :underline_fill
        end

        value_property :latin_font
        value_property :east_asian_font
        value_property :complex_script_font
        value_property :symbol_font

        property :hyperlink_click
        property :hyperlink_mouse_over

        value_property :right_to_left

        property :extension_list

      private

        def point(value)
          message = "Invalid point: Must either be an integer between -400,000 and 400,000 or include units"
          raise ArgumentError, message unless valid_point?(value) || valid_measure?(value)
        end

        def valid_point?(value)
          value.is_a?(Integer) && (-400_000..400_000).cover?(value)
        end

        def valid_measure?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
        end

      end
    end
  end
end
