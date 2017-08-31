module OpenXml
  module DrawingML
    module Properties
      class GradientStop < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :gs

        attribute :position, displays_as: :pos, matches: OpenXml::DrawingML::ST_PositiveFixedPercentage

      end
    end
  end
end
