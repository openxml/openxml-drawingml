require "spec_helper"

describe OpenXml::DrawingML::Properties::AutofitShape do
  include ValuePropertyTestMacros

  it_should_use tag: :spAutoFit, name: "autofit_shape", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:spAutoFit/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
