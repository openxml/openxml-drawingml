require "openxml/drawingml/properties/path"

module OpenXml
  module DrawingML
    module Properties
      class PathList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :pathLst
        child_class :path

      end
    end
  end
end
