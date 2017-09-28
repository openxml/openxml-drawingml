require "openxml/drawingml/properties/line_property"

module OpenXml
  module DrawingML
    module Properties
      class Underline < LineProperty
        namespace :a
        tag :uLn

      end
    end
  end
end
