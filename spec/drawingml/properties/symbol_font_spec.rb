require "spec_helper"

describe OpenXml::DrawingML::Properties::SymbolFont do
  include ValuePropertyTestMacros

  it_should_use tag: :sym, name: "symbol_font", value: "Calibri"

  with_value("Calibri") do
    it_should_work
    it_should_output "<a:sym typeface=\"Calibri\"/>"
  end

  with_value(:not_a_string) do
    it_should_not_work
  end
end
