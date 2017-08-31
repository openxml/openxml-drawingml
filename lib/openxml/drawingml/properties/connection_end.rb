require "openxml/drawingml/properties/connection"

module OpenXml
  module DrawingML
    module Properties
      class ConnectionEnd < Connection
        namespace :a
        tag :endCxn

      end
    end
  end
end
