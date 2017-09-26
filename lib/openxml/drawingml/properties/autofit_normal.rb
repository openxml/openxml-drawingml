module OpenXml
  module DrawingML
    module Properties
      class AutofitNormal < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :normAutofit

        attribute :font_scale, expects: :percentage
        attribute :line_space_reduction, displays_as: :lnSpcReduction, expects: :percentage

      end
    end
  end
end
