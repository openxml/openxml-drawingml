require "openxml/drawingml/properties/audio_cd_time_property"

module OpenXml
  module DrawingML
    module Properties
      class AudioCdEnd < AudioCdTimeProperty
        namespace :a
        tag :end

      end
    end
  end
end
