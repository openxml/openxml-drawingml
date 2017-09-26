module OpenXml
  module DrawingML
    module Elements
      class Run < OpenXml::Element
        include HasChildren, HasProperties
        namespace :a
        tag :r

        UNDERLINE_STYLES = %i{
          dash dashHeavy dashLong dashLongHeavy dbl dotDash dotDashHeavy
          dotDotDash dotDotDashHeavy dotted dottedHeavy heavy none sng wavy
          wavyDbl wavyHeavy words
        }.freeze

        # Validations
        point = lambda { |value|
          valid_point = value.is_a?(Integer) && (-400_000..400_000).covers?(value)
          valid_measure = value =~ /-?[0-9]+(\.[0-9]+)?(mm|cm|in|pt|pc|pi)/
          raise ArgumentError unless valid_point || valid_measure
        }

        properties_attribute :alternative_language, displays_as: :altLang, expects: :string
        properties_attribute :bold, displays_as: :b, expects: :boolean
        properties_attribute :baseline, expects: :percentage
        properties_attribute :bookmark_target, displays_as: :bmk, expects: :string
        properties_attribute :capitalization, displays_as: :cap, one_of: %i{ all none small }
        properties_attribute :dirty, expects: :boolean
        properties_attribute :spelling_error, displays_as: :err, expects: :boolean
        properties_attribute :italic, displays_as: :i, expects: :boolean
        properties_attribute :kerning, displays_as: :kern, expects: :integer, in_range: (0..400_000)
        properties_attribute :kumimoji, expects: :boolean
        properties_attribute :language, displays_as: :lang, expects: :string
        properties_attribute :no_proofing, displays_as: :noProof, expects: :boolean
        properties_attribute :normalize_heights, displays_as: :normalizeH, expects: :boolean
        properties_attribute :smart_tag_clean, displays_as: :smtClean, expects: :boolean
        properties_attribute :smart_tag_id, displays_as: :smtId, expects: :positive_integer
        properties_attribute :spacing, displays_as: :spc, validation: point
        properties_attribute :strikethrough, displays_as: :strike, one_of: %i{ dblStrike noStrike sngStrike }
        properties_attribute :font_size, displays_as: :sz, expects: :integer, in_range: (100..400_000)
        properties_attribute :underline, displays_as: :u, one_of: UNDERLINE_STYLES

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

      end
    end
  end
end
