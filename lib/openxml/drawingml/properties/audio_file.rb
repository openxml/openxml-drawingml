require "openxml/drawingml/properties/external_media_file"

module OpenXml
  module DrawingML
    module Properties
      class AudioFile < ExternalMediaFile
        namespace :a
        tag :audioFile

      end
    end
  end
end
