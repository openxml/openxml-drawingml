module OpenXml
  module DrawingML
    module Properties
      class ExternalMediaFile < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties

        attribute :content_type, displays_as: :contentType, expects: :string
        attribute :link, namespace: :r, expects: :string, required: true

        property :extension_list

      end
    end
  end
end
