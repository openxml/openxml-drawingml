module OpenXml
  module DrawingML
    module Properties
      class SupplementalFont < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :font

        attribute :script, expects: :string
        attribute :typeface, expects: :string

      end
    end
  end
end
