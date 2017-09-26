require "openxml/drawingml/properties/extra_color_scheme"

module OpenXml
  module DrawingML
    module Properties
      class ExtraColorSchemeList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :extraClrSchemeLst
        child_class :extra_color_scheme

      end
    end
  end
end
