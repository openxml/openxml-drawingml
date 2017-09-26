require "spec_helper"

describe OpenXml::DrawingML::Properties::LineJoinBevel do
  include ValuePropertyTestMacros

  it_should_use tag: :bevel, name: "line_join_bevel", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:bevel/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
