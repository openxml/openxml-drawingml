require "openxml/drawingml/properties/embedded_sound_file"

module OpenXml
  module DrawingML
    module Properties
      class WavAudioFile < EmbeddedSoundFile
        namespace :a
        tag :wavAudioFile

      end
    end
  end
end
