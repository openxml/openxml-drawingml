module OpenXml
  module DrawingML
    module Properties
      class PercentageProperty < ValueProperty

        def valid?
          value.is_a?(String) && value =~ OpenXml::DrawingML::ST_Percentage
        end

        def invalid_message
          "#{value.inspect} is an invalid value for #{name}; it must be a percentage"
        end

      end
    end
  end
end
