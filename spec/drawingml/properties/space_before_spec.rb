require "spec_helper"

describe OpenXml::DrawingML::Properties::SpaceBefore do
  include ValuePropertyTestMacros

  it_should_use tag: :spcBef, name: "space_before", value: "50%"

  it_should_have_value_properties :spacing_percent, :spacing_points, value: "50%"

  with_value("50%") do
    it_should_work
    it_should_output "<a:spcBef>\n    <a:spcPct val=\"50%\"/>\n  </a:spcBef>"
  end

  with_value(500) do
    it_should_work
    it_should_output "<a:spcBef>\n    <a:spcPts val=\"500\"/>\n  </a:spcBef>"
  end
end
