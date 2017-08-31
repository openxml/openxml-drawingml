require "openxml/drawingml/properties/tab_stop"

module OpenXml
  module DrawingML
    module Properties
      class TabList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :tabLst
        child_class :tab_stop

      end
    end
  end
end
