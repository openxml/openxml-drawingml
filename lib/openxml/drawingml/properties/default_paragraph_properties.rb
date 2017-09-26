require "openxml/drawingml/properties/paragraph_properties"

module OpenXml
  module DrawingML
    module Properties
      class DefaultParagraphProperties < ParagraphProperties
        namespace :a
        tag :defPPr

      end
    end
  end
end
