module OpenXml
  module DrawingML
    module Properties
      class FormatScheme < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :fmtScheme

        attribute :scheme_name, displays_as: :name, expects: :string

        property :fill_style_list, required: true
        property :line_style_list, required: true
        property :effect_style_list, required: true
        property :background_fill_style_list, required: true

      end
    end
  end
end
