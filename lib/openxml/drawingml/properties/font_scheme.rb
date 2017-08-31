module OpenXml
  module DrawingML
    module Properties
      class FontScheme < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :fontScheme

        attribute :scheme_name, displays_as: :name, expects: :string

        property :major_font
        property :minor_font
        property :extension_list

      end
    end
  end
end
