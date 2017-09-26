require "spec_helper"

describe OpenXml::DrawingML::Properties::PictureLocks do
  include PropertyTestMacros

  it_should_use tag: :picLocks, name: "picture_locks"

  it_should_have_property :extension_list

  %i{ disable_cropping disable_grouping disable_selection disable_rotation
      disable_aspect_ratio_change disable_moving disable_resizing disable_edit_points
      disable_adjustment_handles disable_change_arrowheads }.each do |attr|
    for_attribute(attr) do
      it_should_behave_like_a_boolean_attribute
    end
  end
end
