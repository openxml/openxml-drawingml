module OpenXml
  module DrawingML
    module Properties
      class GradientLine < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :lin

        attribute :angle, displays_as: :ang, expects: :integer, in_range: (0..21_600_000)
        attribute :scaled, expects: :boolean

      end
    end
  end
end
