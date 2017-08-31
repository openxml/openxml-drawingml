module OpenXml
  module DrawingML
    module Properties
      class LineProperty < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties

        COMPOUND_LINE_TYPES = %i{ dbl sng thickThin thinThick tri }.freeze

        attribute :alignment, displays_as: :algn, one_of: %i{ ctr in }
        attribute :line_cap, displays_as: :cap, one_of: %i{ flat rnd sq }
        attribute :compound_line_type, displays_as: :cmpd, one_of: COMPOUND_LINE_TYPES
        attribute :width, displays_as: :w, expects: :integer, in_range: (0..20_116_800)

        property_choice do
          value_property :no_fill, as: :fill_none
          property :solid_fill, as: :fill_solid
          property :gradient_fill, as: :fill_gradient
          property :pattern_fill, as: :fill_pattern
        end

        property_choice do
          value_property :preset_dash_style
          property :custom_dash_style
        end

        property_choice do
          value_property :use_round_join, as: :line_join_round
          value_property :use_bevel_join, as: :line_join_bevel
          value_property :use_miter_join, as: :line_join_miter
        end

        property :head_end
        property :tail_end
        property :extension_list

        def render?
          true
        end

      end
    end
  end
end
