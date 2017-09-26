require "spec_helper"

describe OpenXml::DrawingML::Properties::GraphicFrameLocks do
  include PropertyTestMacros

  it_should_use tag: :graphicFrameLocks, name: "graphic_frame_locks"

  it_should_have_property :extension_list

  %i{ disable_grouping disable_drilldown disable_aspect_ratio_change disable_moving
      disable_resizing }.each do |attr|
    for_attribute(attr) do
      it_should_behave_like_a_boolean_attribute
    end
  end
end
