require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletSizeText do
  include ValuePropertyTestMacros

  it_should_use tag: :buSzTx, name: "bullet_size_text", value: true

  with_value(true) do
    it_should_work
    it_should_output "<a:buSzTx/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end
end
