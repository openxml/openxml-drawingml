require "openxml/drawingml/properties/gradient_stop"

module OpenXml
  module DrawingML
    module Properties
      class GradientStopList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :gsLst
        child_class :gradient_stop

      end
    end
  end
end
