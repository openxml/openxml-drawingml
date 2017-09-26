# require "openxml/drawingml/properties/path_close"
# require "openxml/drawingml/properties/path_move_to"
# require "openxml/drawingml/properties/path_line_to"
# require "openxml/drawingml/properties/path_arc_to"
# require "openxml/drawingml/properties/path_quadratic_bezier_to"
# require "openxml/drawingml/properties/path_cubic_bezier_to"

module OpenXml
  module DrawingML
    module Properties
      class Path < OpenXml::Properties::ContainerProperty
        include OpenXml::HasAttributes
        namespace :a
        tag :path
        # TODO: Implement child classes
        # child_classes :path_close, :path_move_to, :path_line_to, :path_arc_to,
        #               :path_quadradic_bezier_to, :cubic_bezier_to

        FILL_MODES = %i{ none norm lighten lightenLess darken darkenLess }.freeze

        attribute :width, displays_as: :w, expects: :positive_coordinate
        attribute :height, displays_as: :h, expects: :positive_coordinate
        attribute :fill_mode, displays_as: :fill, one_of: FILL_MODES
        attribute :stroked, displays_as: :stroke, expects: :boolean
        attribute :extrusion_ok, displays_as: :extrusionOk, expects: :boolean

        def render?
          attributes.keys.map(&method(:send)).any? { |value| !value.nil? } || super
        end

      private

        def positive_coordinate(value)
          message = "Invalid coordinate: should either be an integer (in EMUs) or include a unit"
          raise ArgumentError, message unless positive_universal_measure?(value) || positive_integer?(value)
        end

        def positive_universal_measure?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_PositiveUniversalMeasure
        end

        def positive_integer?(value)
          value.is_a?(Integer) && value >= 0
        end

      end
    end
  end
end
