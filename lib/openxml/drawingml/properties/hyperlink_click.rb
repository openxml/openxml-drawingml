require "openxml/drawingml/properties/hyperlink_property"

module OpenXml
  module DrawingML
    module Properties
      class HyperlinkClick < HyperlinkProperty
        namespace :a
        tag :hlinkClick

      end
    end
  end
end
