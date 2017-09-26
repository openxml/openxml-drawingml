require "openxml/drawingml/properties/font_property"

module OpenXml
  module DrawingML
    module Properties
      class BulletFont < FontProperty
        namespace :a
        tag :buFont

      end
    end
  end
end
