require "openxml/drawingml/properties/extent"

module OpenXml
  module DrawingML
    module Properties
      class ChildExtent < Extent
        namespace :a
        tag :chExt

      end
    end
  end
end
