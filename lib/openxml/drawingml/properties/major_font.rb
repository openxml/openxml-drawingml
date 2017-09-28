require "openxml/drawingml/properties/font_collection_property"

module OpenXml
  module DrawingML
    module Properties
      class MajorFont < FontCollectionProperty
        namespace :a
        tag :majorFont

      end
    end
  end
end
