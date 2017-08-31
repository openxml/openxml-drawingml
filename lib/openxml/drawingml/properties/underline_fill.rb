module OpenXml
  module DrawingML
    module Properties
      class UnderlineFill < SimplePropertyContainerProperty
        namespace :a
        tag :uFill

        property_choice do
          value_property :no_fill, as: :fill_none
          property :solid_fill, as: :fill_solid
          property :gradient_fill, as: :fill_gradient
          property :pattern_fill, as: :fill_pattern
          property :blip_fill, as: :fill_blip
          value_property :inherit_group_fill, as: :fill_group
        end

      end
    end
  end
end
