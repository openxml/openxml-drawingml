require "openxml/drawingml/properties/transform"

module OpenXml
  module DrawingML
    module Properties
      class GroupTransform < Transform
        namespace :a
        tag :xfrm

        property :child_offset
        property :child_extent

      end
    end
  end
end
