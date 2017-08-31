require "openxml/drawingml/properties/effect_style"

module OpenXml
  module DrawingML
    module Properties
      class EffectStyleList < OpenXml::Properties::ContainerProperty
        namespace :a
        tag :effectStyleLst
        child_class :effect_style

      end
    end
  end
end
