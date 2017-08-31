require "openxml/drawingml/properties/custom_color"

module OpenXml
  module DrawingML
    module Properties
      class CustomColorList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :custClrLst
        child_class :custom_color

      end
    end
  end
end
