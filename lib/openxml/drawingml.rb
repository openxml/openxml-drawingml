module OpenXml
  module DrawingML
  end
end

# For now, we'll rely on Docx's basic implementations
require "extract/attribute_builder"
#require "extract/property_builder"
#require "extract/properties"
#require "openxml/docx/elements"
#require "openxml/docx/package"
#require "openxml/docx/parts"
#require "openxml/docx/section"
#require "openxml/docx/style"

# And then add our own stuff
require "openxml/drawingml/elements"
