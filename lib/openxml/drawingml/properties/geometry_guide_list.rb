require "openxml/drawingml/properties/geometry_guide"

module OpenXml
  module DrawingML
    module Properties
      class GeometryGuideList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :gdLst
        child_class :geometry_guide

      end
    end
  end
end
