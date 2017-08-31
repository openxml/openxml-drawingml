module OpenXml
  module DrawingML
    module Properties
      class LineSpacing < SimplePropertyContainerProperty
        namespace :a
        tag :lnSpc

        property_choice do
          value_property :percent, as: :spacing_percent
          value_property :points, as: :spacing_points
        end

      end
    end
  end
end
