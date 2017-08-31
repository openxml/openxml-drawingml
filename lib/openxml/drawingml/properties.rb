module OpenXml
  module DrawingML
    module Properties
    end
  end
end

require "openxml/properties"
require "openxml/has_properties"
require "openxml/has_children"
require "openxml/has_attributes"
require "openxml/contains_properties"

require "openxml/drawingml/properties/value_property"
require "openxml/drawingml/properties/integer_property"
require "openxml/drawingml/properties/positive_integer_property"
require "openxml/drawingml/properties/percentage_property"
require "openxml/drawingml/properties/positive_percentage_property"
require "openxml/drawingml/properties/simple_boolean_property"
require "openxml/drawingml/properties/simple_property_container_property"

Dir.glob("#{File.join(File.dirname(__FILE__), "properties", "*.rb")}").each do |file|
  require file
end
