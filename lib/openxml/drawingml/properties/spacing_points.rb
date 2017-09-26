module OpenXml
  module DrawingML
    module Properties
      class SpacingPoints < IntegerProperty
        namespace :a
        tag :spcPts

        def valid?
          # Value range taken from OpenXml Spec Part 1, section 20.1.10.77
          super && (0..158_400).cover?(value)
        end

        def invalid_message
          "Invalid spacing_points: must be a point value between 0 and 158,400"
        end

      end
    end
  end
end
