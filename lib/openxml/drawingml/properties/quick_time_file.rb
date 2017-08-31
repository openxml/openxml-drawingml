module OpenXml
  module DrawingML
    module Properties
      class QuickTimeFile < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :quickTimeFile

        attribute :link, namespace: :r, expects: :string, required: true

        property :extension_list

      end
    end
  end
end

