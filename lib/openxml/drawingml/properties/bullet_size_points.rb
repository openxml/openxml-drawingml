module OpenXml
  module DrawingML
    module Properties
      class BulletSizePoints < ValueProperty
        namespace :a
        tag :buSzPts

        def valid?
          # Value range taken from OpenXml Spec Part 1, section 20.1.10.67
          value.is_a?(Integer) && (100..400_000).cover?(value)
        end

        def invalid_message
          "Invalid bullet_size_points: value must be a point value between 100 and 400,000"
        end

      end
    end
  end
end
