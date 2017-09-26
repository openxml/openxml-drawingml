require "openxml/drawingml/properties/dash_stop"

module OpenXml
  module DrawingML
    module Properties
      class CustomDashStyle < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :custDash
        child_class :dash_stop

      end
    end
  end
end
