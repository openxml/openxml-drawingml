require "openxml/drawingml/properties/audio_cd_time_property"

module OpenXml
  module DrawingML
    module Properties
      class AudioCdStart < AudioCdTimeProperty
        namespace :a
        tag :st

      end
    end
  end
end
