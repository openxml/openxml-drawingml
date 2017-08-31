require "spec_helper"

describe OpenXml::DrawingML::Properties::LatinFont do
  include ValuePropertyTestMacros

  it_should_use tag: :latin, name: "latin_font", value: "Calibri"

  with_value("Calibri") do
    it_should_work
    it_should_output "<a:latin typeface=\"Calibri\"/>"
  end

  with_value(:not_a_string) do
    it_should_not_work
  end
end
