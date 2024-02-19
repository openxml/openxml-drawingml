module OpenXml
  module DrawingML
    module Properties
      class SpaceAfter < SimplePropertyContainerProperty
        namespace :a
        tag :spcAft

        property_choice do
          value_property :spacing_percent
          value_property :spacing_points
        end

        def initialize(value)
          super()
          target_property = value.is_a?(String) && value =~ /%/ ? :spacing_percent= : :spacing_points=
          public_send(target_property, value)
        end

      end
    end
  end
end
