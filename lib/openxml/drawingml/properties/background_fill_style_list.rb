require "openxml/drawingml/properties/fill_style_list"

module OpenXml
  module DrawingML
    module Properties
      class BackgroundFillStyleList < FillStyleList
        namespace :a
        tag :bgFillStyleLst
        child_classes :fill_none, :fill_solid, :fill_gradient, :fill_blip, :fill_pattern, :fill_group

      end
    end
  end
end
