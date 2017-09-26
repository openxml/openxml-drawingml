module OpenXml
  module DrawingML
    module Properties
      class LineJoinMiter < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :miter

        attribute :limit, displays_as: :lim, matches: OpenXml::DrawingML::ST_PositivePercentage

        def initialize(value)
          super()
          raise ArgumentError, invalid_message unless ok_values.member?(value)
          @value = value
        end

        def ok_values
          [ nil, false, true ]
        end

        def invalid_message
          "Invalid line_join_miter: value must be a boolean"
        end

        def render?
          @value == true
        end

      end
    end
  end
end
