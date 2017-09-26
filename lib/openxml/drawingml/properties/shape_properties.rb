module OpenXml
  module DrawingML
    module Properties
      class ShapeProperties < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :spPr

        BLACK_AND_WHITE_MODES = %i{
          auto black blackGray blackWhite clr gray grayWhite hidden invGray ltGray white
        }.freeze

        attribute :bw_mode, displays_as: :bwMode, one_of: BLACK_AND_WHITE_MODES

        property :transform

        property_choice do
          property :custom_geometry
          property :preset_geometry
        end

        property_choice do
          value_property :no_fill, as: :fill_none
          property :solid_fill, as: :fill_solid
          property :gradient_fill, as: :fill_gradient
          property :pattern_fill, as: :fill_pattern
          property :blip_fill, as: :fill_blip
          value_property :inherit_group_fill, as: :fill_group
        end

        property :outline

        property_choice do
          property :effect_list
          property :effect_dag
        end

        property :scene_3d
        # property :shape_3d # TODO: sp3d

        property :extension_list

      end
    end
  end
end
