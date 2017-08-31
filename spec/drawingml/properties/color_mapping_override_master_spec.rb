require "spec_helper"

describe OpenXml::DrawingML::Properties::ColorMappingOverrideMaster do
  include ValuePropertyTestMacros

  it_should_use tag: :masterClrMapping, name: "color_mapping_override_master", value: true
end
