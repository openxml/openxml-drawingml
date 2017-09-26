require "openxml/drawingml/properties/extension"

module OpenXml
  module DrawingML
    module Properties
      class ExtensionList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :extLst
        child_class :extension

      end
    end
  end
end
