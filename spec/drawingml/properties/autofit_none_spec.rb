require "spec_helper"

describe OpenXml::DrawingML::Properties::AutofitNone do
  include ValuePropertyTestMacros

  it_should_use tag: :noAutofit, name: "autofit_none", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:noAutofit/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
