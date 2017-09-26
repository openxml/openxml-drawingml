require "spec_helper"

describe OpenXml::DrawingML::Properties::SpacingPercent do
  include ValuePropertyTestMacros

  it_should_use tag: :spcPct, name: "spacing_percent", value: "50%"

  ["50%", "-50%"].each do |good_value|
    with_value(good_value) do
      it_should_work
      it_should_output "<a:spcPct val=\"#{good_value}\"/>"
    end
  end

  [50, "50", :invalid].each do |bad_value|
    with_value(bad_value) do
      it_should_not_work
    end
  end
end
