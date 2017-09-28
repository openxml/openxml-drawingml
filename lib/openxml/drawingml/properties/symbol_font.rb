require "openxml/drawingml/properties/font_property"

module OpenXml
  module DrawingML
    module Properties
      class SymbolFont < FontProperty
        namespace :a
        tag :sym

      end
    end
  end
end
