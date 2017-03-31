module OpenXml
  module DrawingML
    module Elements
    end
  end
end

require "extract/element"
require "extract/container"
#require "openxml/docx/elements/text"
Dir.glob("#{File.join(File.dirname(__FILE__), "elements", "*.rb")}").each do |file|
  require file
end
