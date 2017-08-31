require "spec_helper"

describe OpenXml::DrawingML::Properties::GroupShapeLocks do
  include PropertyTestMacros

  it_should_use tag: :grpSpLocks, name: "group_shape_locks"

  it_should_have_property :extension_list

  %i{ disable_aspect_ratio_change disable_shape_grouping disable_moving disable_resizing
      disable_rotation disable_selection disable_shape_ungrouping }.each do |attr|
    for_attribute(attr) do
      it_should_behave_like_a_boolean_attribute
    end
  end
end
