require "spec_helper"

describe OpenXml::DrawingML::Properties::CustomGeometry do
  include PropertyTestMacros

  it_should_use tag: :custGeom, name: "custom_geometry"

  it_should_have_properties :shape_adjustment_list, :geometry_guide_list, :path_list
end
