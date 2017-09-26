module OpenXml
  module DrawingML
    module Properties
      class AudioCdTimeProperty < OpenXml::Properties::ComplexProperty
        attribute :track, expects: :integer, in_range: (0..255), required: true
        attribute :time, expects: :positive_integer

      end
    end
  end
end
