require "openxml/drawingml/properties/geometry_guide"

module OpenXml
  module DrawingML
    module Properties
      class ShapeAdjustmentList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :avLst
        child_class :geometry_guide

      end
    end
  end
end
