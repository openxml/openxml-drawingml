module OpenXml
  module DrawingML
    module Properties
      class ColorXformAlphaOffset < ValueProperty
        namespace :a
        tag :alphaOff

        def valid?
          value =~ OpenXml::DrawingML::ST_FixedPercentage
        end

        def invalid_message
          "#{value.inspect} is an invalid value for #{name}; it must be a percentage between -100% and 100%"
        end

      end
    end
  end
end
