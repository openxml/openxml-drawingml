require "spec_helper"

describe OpenXml::DrawingML::Properties::FillStyleList do
  include PropertyTestMacros

  it_should_use tag: :fillStyleLst, name: "fill_style_list"

  context "when adding fill styles" do
    before(:each) do
      @instance = described_class.new
    end

    it "should raise an exception if the fill style isn't one of the accepted properties" do
      expect { instance << [] }.to raise_error(ArgumentError)
    end
  end

  context "when there are no fill styles" do
    before(:each) do
      @instance = described_class.new
    end

    it "should not output any XML" do
      expect(xml(instance)).to eq("")
    end
  end

  context "when there are fill styles" do
    before(:each) do
      @instance = described_class.new
      instance << OpenXml::DrawingML::Properties::FillNone.new(true)
      instance << OpenXml::DrawingML::Properties::FillGroup.new(true)
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:fillStyleLst>\n    <a:noFill/>\n    <a:grpFill/>\n  </a:fillStyleLst>")
    end
  end
end
