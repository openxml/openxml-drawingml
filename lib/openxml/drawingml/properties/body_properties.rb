module OpenXml
  module DrawingML
    module Properties
      class BodyProperties < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :bodyPr

        VERTICAL_TYPES = %i{
          eaVert horz mongolianVert vert vert270 wordArtVert wordArtVertRtl
        }.freeze

        attribute :anchor, one_of: %i{ b ctr dist just t }
        attribute :anchor_center, displays_as: :anchorCtr, expects: :boolean
        attribute :bottom_inset, displays_as: :bIns, expects: :coordinate
        attribute :compatible_line_spacing, displays_as: :compatLnSpc, expects: :boolean
        attribute :force_antialias, displays_as: :forceAA, expects: :boolean
        attribute :from_word_art, expects: :boolean
        attribute :horizontal_overflow, displays_as: :horzOverflow, one_of: %i{ clip overflow }
        attribute :left_inset, displays_as: :lIns, expects: :coordinate
        attribute :number_of_columns, displays_as: :numCol, in_range: 1..16
        attribute :right_inset, displays_as: :rIns, expects: :coordinate
        attribute :rotation, displays_as: :rot, expects: :integer
        attribute :columns_right_to_left, displays_as: :rtlCol, expects: :boolean
        attribute :column_spacing, displays_as: :spcCol, expects: :positive_coordinate
        attribute :respect_paragraph_spacing, displays_as: :spcFirstLastPara, expects: :boolean
        attribute :top_inset, displays_as: :tIns, expects: :coordinate
        attribute :text_stays_upright, displays_as: :upright, expects: :boolean
        attribute :vertical_text, displays_as: :vert, one_of: VERTICAL_TYPES
        attribute :vertical_overflow, displays_as: :vertOverflow, one_of: %i{ clip ellipsis overflow }
        attribute :wrap, one_of: %i{ none square }

        property :preset_text_warp

        property_choice do
          value_property :no_autofit, as: :autofit_none
          property :normal_autofit, as: :autofit_normal
          value_property :shape_autofit, as: :autofit_shape
        end

        property :scene_3d

        property_choice do
          # TODO: Fill out the `sp3d` property and its children
          value_property :exclude_text_from_3d, as: :flat_text
        end

        property :extension_list

        def render?
          true
        end

      private

        def coordinate(value)
          message = "Invalid coordinate: Must be an integer or include units"
          raise ArgumentError, message unless integer?(value) || universal_measure?(value)
        end

        def positive_coordinate(value)
          message = "Invalid positive coordinate: Must be an integer greater than 0 or include units"
          raise ArgumentError, message unless integer?(value) && value >= 0 || positive_universal_measure?(value)
        end

        def integer?(value)
          value.is_a?(Integer)
        end

        def universal_measure?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
        end

        def positive_universal_measure?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_PositiveUniversalMeasure
        end

      end
    end
  end
end
