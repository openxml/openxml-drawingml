require "spec_helper"

describe OpenXml::DrawingML::Properties::LineJoinMiter do
  include PropertyTestMacros

  it_should_use tag: :miter, name: "line_join_miter", value: true

  for_attribute(:limit) do
    with_value("10%") do
      it_should_assign_successfully true
      it_should_output_expected_xml true
    end

    ["-10%", 10, :invalid].each do |bad_value|
      with_value(bad_value) do
        it_should_raise_an_exception
      end
    end
  end
end
