module OpenXml
  module DrawingML
    module Properties
      class AudioCd < SimplePropertyContainerProperty
        namespace :a
        tag :audioCd

        property :start, as: :audio_cd_start, required: true
        property :end, as: :audio_cd_end, required: true

        property :extension_list

      end
    end
  end
end
