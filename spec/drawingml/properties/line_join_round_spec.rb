require "spec_helper"

describe OpenXml::DrawingML::Properties::LineJoinRound do
  include ValuePropertyTestMacros

  it_should_use tag: :round, name: "line_join_round", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:round/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
