require "openxml/drawingml/properties/line_property"

module OpenXml
  module DrawingML
    module Properties
      class Outline < LineProperty
        namespace :a
        tag :ln

      end
    end
  end
end
