module OpenXml
  module DrawingML
    module Properties
      class BulletSizePercent < ValueProperty
        namespace :a
        tag :buSzPct

        def valid?
          # ST_TextBulletSizePercent - Part 1, section 20.1.10.61
          /0*((2[5-9])|([3-9][0-9])|([1-3][0-9][0-9])|400)%/ =~ value
        end

        def invalid_message
          "Invalid bullet_size_percent: value must be a percentage between 25% and 400%"
        end

      end
    end
  end
end
