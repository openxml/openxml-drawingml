require "openxml/drawingml/properties/fill_none"
require "openxml/drawingml/properties/fill_solid"
require "openxml/drawingml/properties/fill_gradient"
require "openxml/drawingml/properties/fill_blip"
require "openxml/drawingml/properties/fill_pattern"
require "openxml/drawingml/properties/fill_group"

module OpenXml
  module DrawingML
    module Properties
      class FillStyleList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :fillStyleLst
        child_classes :fill_none, :fill_solid, :fill_gradient, :fill_blip, :fill_pattern, :fill_group

      end
    end
  end
end
