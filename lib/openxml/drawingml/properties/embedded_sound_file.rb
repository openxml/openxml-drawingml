module OpenXml
  module DrawingML
    module Properties
      class EmbeddedSoundFile < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :snd

        attribute :embed, namespace: :r, expects: :string
        attribute :sound_name, displays_as: :name, expects: :string

      end
    end
  end
end
