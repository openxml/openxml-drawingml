require "spec_helper"

describe OpenXml::DrawingML::Properties::ComplexScriptFont do
  include ValuePropertyTestMacros

  it_should_use tag: :cs, name: "complex_script_font", value: "Calibri"

  with_value("Calibri") do
    it_should_work
    it_should_output "<a:cs typeface=\"Calibri\"/>"
  end

  with_value(:not_a_string) do
    it_should_not_work
  end
end
