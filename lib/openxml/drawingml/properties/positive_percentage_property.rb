module OpenXml
  module DrawingML
    module Properties
      class PositivePercentageProperty < ValueProperty

        def valid?
          value =~ OpenXml::DrawingML::ST_PositivePercentage
        end

        def invalid_message
          "#{value.inspect} is an invalid value for #{name}; it must be a positive percentage"
        end

      end
    end
  end
end
