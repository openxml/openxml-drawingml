require "spec_helper"

describe OpenXml::DrawingML::Properties::SpaceAfter do
  include ValuePropertyTestMacros

  it_should_use tag: :spcAft, name: "space_after", value: "50%"

  it_should_have_value_properties :spacing_percent, :spacing_points, value: "50%"

  with_value("50%") do
    it_should_work
    it_should_output "<a:spcAft>\n    <a:spcPct val=\"50%\"/>\n  </a:spcAft>"
  end

  with_value(500) do
    it_should_work
    it_should_output "<a:spcAft>\n    <a:spcPts val=\"500\"/>\n  </a:spcAft>"
  end
end
