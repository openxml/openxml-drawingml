require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorMappingOverride do
  include PropertyTestMacros

  it_should_use tag: :clrMapOvr, name: "color_mapping_override"

  it_should_have_value_property :use_master_color_mapping
  it_should_have_property :override_map
end
