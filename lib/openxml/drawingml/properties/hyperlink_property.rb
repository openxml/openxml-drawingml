module OpenXml
  module DrawingML
    module Properties
      class HyperlinkProperty < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties

        attribute :action, expects: :string
        attribute :ends_sounds, displays_as: :endSnd, expects: :boolean
        attribute :visited, displays_as: :highlightClick, expects: :boolean
        attribute :add_to_history, displays_as: :history, expects: :boolean
        attribute :id, namespace: :r, expects: :string
        attribute :invalid_url, displays_as: :invalidUrl, expects: :string
        attribute :target_frame, displays_as: :tgtFrame, expects: :string
        attribute :tooltip, expects: :string

        property :embedded_sound_file
        property :extension_list

      end
    end
  end
end
