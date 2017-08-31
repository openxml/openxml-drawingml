require "spec_helper"

describe OpenXml::DrawingML::Properties::SpacingPoints do
  include ValuePropertyTestMacros

  it_should_use tag: :spcPts, name: "spacing_points", value: 500

  with_value(500) do
    it_should_work
    it_should_output "<a:spcPts val=\"500\"/>"
  end

  [-500, "50%", "50", :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
