module OpenXml
  module DrawingML
    module Properties
      class FillBlip < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :blipFill

        attribute :dpi, expects: :positive_integer

        property :blip
        property :source_rectangle

        property_choice do
          property :tile
          property :stretch
        end

      end
    end
  end
end
