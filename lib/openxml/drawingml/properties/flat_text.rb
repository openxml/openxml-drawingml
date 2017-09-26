module OpenXml
  module DrawingML
    module Properties
      class FlatText < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :flatTx

        attribute :z, expects: :coordinate

        def initialize(value)
          super()
          @value = value
        end

        def render?
          value || super
        end

      private

        attr_reader :value

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
