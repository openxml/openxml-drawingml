require "openxml/drawingml/properties/outline"

module OpenXml
  module DrawingML
    module Properties
      class LineStyleList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :lnStyleLst
        child_class :outline

      end
    end
  end
end
