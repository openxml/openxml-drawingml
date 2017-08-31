module OpenXml
  module DrawingML
    module Properties
      class TabStop < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :tab

        attribute :alignment, displays_as: :algn, one_of: %i{ ctr dec l r }
        attribute :position, displays_as: :pos, expects: :coordinate

      private

        def coordinate(value)
          message = "Invalid coordinate: Must be an integer or include a unit measure"
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
