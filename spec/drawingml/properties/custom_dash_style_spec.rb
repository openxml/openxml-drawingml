require "spec_helper"

describe OpenXml::DrawingML::Properties::CustomDashStyle do
  include PropertyTestMacros

  it_should_use tag: :custDash, name: "custom_dash_style"

  context "when adding children" do
    before(:each) do
      @instance = described_class.new
    end

    it "should raise an exception if the child isn't one of the accepted properties" do
      expect { instance << [] }.to raise_error(ArgumentError)
    end
  end

  context "when there are no children" do
    before(:each) do
      @instance = described_class.new
    end

    it "should not output any XML" do
      expect(xml(instance)).to eq("")
    end
  end

  context "when there is a child" do
    before(:each) do
      @instance = described_class.new
      instance << OpenXml::DrawingML::Properties::DashStop.new.tap do |dash_stop|
        dash_stop.dash_length = "60%"
        dash_stop.space_length = "40%"
      end
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:custDash>\n    <a:ds d=\"60%\" sp=\"40%\"/>\n  </a:custDash>")
    end
  end
end
