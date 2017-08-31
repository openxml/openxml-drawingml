require "spec_helper"

describe OpenXml::DrawingML::Properties::BulletSizePoints do
  include ValuePropertyTestMacros

  it_should_use tag: :buSzPts, name: "bullet_size_points", value: 100

  with_value(100) do
    it_should_work
    it_should_output "<a:buSzPts val=\"100\"/>"
  end

  [ 99, 400_001, :not_an_integer ].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
