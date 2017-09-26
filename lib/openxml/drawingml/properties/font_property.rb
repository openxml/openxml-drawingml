module OpenXml
  module DrawingML
    module Properties
      class FontProperty < OpenXml::Properties::ComplexProperty
        # TODO: Add charset, panose, and pitchFamily attributes
        attribute :typeface, expects: :string

        def initialize(value)
          super()
          raise ArgumentError, invalid_message unless value.is_a?(String)
          self.typeface = value
        end

        def invalid_message
          "Invalid #{name}: value must be a string indicating the typeface"
        end

      private

        # Overridden since typeface _can_ be a zero-length string
        def string(value)
          message = "Invalid typeface: must be a string"
          raise ArgumentError, message unless value.is_a?(String)
        end

      end
    end
  end
end
