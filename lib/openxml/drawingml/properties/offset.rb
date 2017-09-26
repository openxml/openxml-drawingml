module OpenXml
  module DrawingML
    module Properties
      class Offset < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :off

        attribute :x, expects: :coordinate
        attribute :y, expects: :coordinate

      private

        def coordinate(value)
          message = "Invalid coordinate: should either be an integer (in EMUs) or include a unit"
          raise ArgumentError, message unless integer?(value) || universal_measure?(value)
        end

        def universal_measure?(value)
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_UniversalMeasure
        end

        def integer?(value)
          value.is_a?(Integer)
        end

      end
    end
  end
end
