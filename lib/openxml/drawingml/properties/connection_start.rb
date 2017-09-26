require "openxml/drawingml/properties/connection"

module OpenXml
  module DrawingML
    module Properties
      class ConnectionStart < Connection
        namespace :a
        tag :stCxn

      end
    end
  end
end
