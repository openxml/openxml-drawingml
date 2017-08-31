module OpenXml
  module DrawingML
    module Properties
      class DashStop < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :ds

        attribute :dash_length, displays_as: :d, matches: OpenXml::DrawingML::ST_PositivePercentage
        attribute :space_length, displays_as: :sp, matches: OpenXml::DrawingML::ST_PositivePercentage

      end
    end
  end
end
