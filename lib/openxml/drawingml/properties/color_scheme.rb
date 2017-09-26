module OpenXml
  module DrawingML
    module Properties
      class ColorScheme < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :clrScheme

        attribute :scheme_name, displays_as: :name, expects: :string, required: true

        property :dark_one, as: :color_scheme_dark_one, required: true
        property :light_one, as: :color_scheme_light_one, required: true
        property :dark_two, as: :color_scheme_dark_two, required: true
        property :light_two, as: :color_scheme_light_two, required: true
        property :accent_one, as: :color_scheme_accent_one, required: true
        property :accent_two, as: :color_scheme_accent_two, required: true
        property :accent_three, as: :color_scheme_accent_three, required: true
        property :accent_four, as: :color_scheme_accent_four, required: true
        property :accent_five, as: :color_scheme_accent_five, required: true
        property :accent_six, as: :color_scheme_accent_six, required: true
        property :hyperlink, as: :color_scheme_hyperlink, required: true
        property :followed_hyperlink, as: :color_scheme_followed_hyperlink, required: true

        property :extension_list

      end
    end
  end
end
