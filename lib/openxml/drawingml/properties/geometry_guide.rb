module OpenXml
  module DrawingML
    module Properties
      class GeometryGuide < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :gd

        attribute :guide_name, displays_as: :name, expects: :string
        attribute :formula, displays_as: :fmla, expects: :string

      end
    end
  end
end
