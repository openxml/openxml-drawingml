require "openxml/drawingml/properties/font_property"

module OpenXml
  module DrawingML
    module Properties
      class LatinFont < FontProperty
        namespace :a
        tag :latin

      end
    end
  end
end
