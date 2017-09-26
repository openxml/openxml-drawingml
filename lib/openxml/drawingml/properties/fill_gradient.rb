module OpenXml
  module DrawingML
    module Properties
      class FillGradient < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :gradFill

        attribute :tile_flip, displays_as: :flip, one_of: %i{ none x xy y }
        attribute :rotate_with_shape, displays_as: :rotWithShape, expects: :boolean

        property :gradient_stop_list

        property_choice do
          property :line, as: :gradient_line
          property :path, as: :gradient_path
        end

        property :tile_rectangle

      end
    end
  end
end
