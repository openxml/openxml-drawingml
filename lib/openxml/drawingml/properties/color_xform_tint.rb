module OpenXml
  module DrawingML
    module Properties
      class ColorXformTint < ValueProperty
        namespace :a
        tag :tint

        def valid?
          value =~ OpenXml::DrawingML::ST_PositiveFixedPercentage
        end

        def invalid_message
          "#{value.inspect} is an invalid value for #{name}; it must be a positive percentage no greater than 100."
        end

      end
    end
  end
end
