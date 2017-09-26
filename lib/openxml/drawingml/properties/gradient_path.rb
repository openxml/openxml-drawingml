module OpenXml
  module DrawingML
    module Properties
      class GradientPath < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :path

        attribute :path, one_of: %i{ circle rect shape }

        property :fill_to_rectangle

      end
    end
  end
end
