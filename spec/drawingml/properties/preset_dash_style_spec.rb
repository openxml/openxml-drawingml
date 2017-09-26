require "spec_helper"

describe OpenXml::DrawingML::Properties::PresetDashStyle do
  include ValuePropertyTestMacros

  it_should_use tag: :prstDash, name: "preset_dash_style", value: :dash

  with_value(:dash) do
    it_should_work
    it_should_output "<a:prstDash val=\"dash\"/>"
  end

  with_value(:invalid) do
    it_should_not_work
  end
end
