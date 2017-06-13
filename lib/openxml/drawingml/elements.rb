module OpenXml
  module DrawingML
    module Elements
    end
  end
end

require "openxml/drawingml/element"
require "openxml/has_children"
Dir.glob("#{File.join(File.dirname(__FILE__), "elements", "*.rb")}").each do |file|
  require file
end
