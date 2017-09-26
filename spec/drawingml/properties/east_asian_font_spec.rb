require "spec_helper"

describe OpenXml::DrawingML::Properties::EastAsianFont do
  include ValuePropertyTestMacros

  it_should_use tag: :ea, name: "east_asian_font", value: "Calibri"

  with_value("Calibri") do
    it_should_work
    it_should_output "<a:ea typeface=\"Calibri\"/>"
  end

  with_value(:not_a_string) do
    it_should_not_work
  end
end
