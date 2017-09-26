require "openxml/drawingml/properties/external_media_file"

module OpenXml
  module DrawingML
    module Properties
      class VideoFile < ExternalMediaFile
        namespace :a
        tag :videoFile

      end
    end
  end
end
