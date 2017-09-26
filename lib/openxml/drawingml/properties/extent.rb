module OpenXml
  module DrawingML
    module Properties
      class Extent < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :ext

        attribute :cx, expects: :positive_coordinate
        attribute :cy, expects: :positive_coordinate

      private

        def positive_coordinate(value)
          message = "Invalid positive coordinate: should either be an integer (in EMUs) or include a unit"
          raise ArgumentError, message unless positive_integer?(value) || positive_string_with_units?(value)
        end

        def positive_integer?(value)
          value.is_a?(Integer) && value >= 0
        end

        def positive_string_with_units?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_PositiveUniversalMeasure
        end

      end
    end
  end
end
