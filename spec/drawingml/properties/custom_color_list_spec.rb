require "spec_helper"

describe OpenXml::DrawingML::Properties::CustomColorList do
  include PropertyTestMacros

  it_should_use tag: :custClrLst, name: "custom_color_list"

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
      instance << OpenXml::DrawingML::Properties::CustomColor.new.tap do |color|
        color.rgb = "FFFFFF"
      end
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:custClrLst>\n    <a:custClr>\n      <a:srgbClr val=\"FFFFFF\"/>\n    </a:custClr>\n  </a:custClrLst>")
    end
  end
end
