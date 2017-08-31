module OpenXml
  module DrawingML
    module Properties
      class ColorXformHue < PositiveIntegerProperty
        namespace :a
        tag :hue

        def valid?
          # 60,000ths of a degree
          super && value < 21_600_000
        end

        def invalid_message
          "#{value.inspect} is an invalid value for #{name}; it must be an integer between 0 and 21,600,00"
        end

      end
    end
  end
end
