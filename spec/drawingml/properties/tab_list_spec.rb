require "spec_helper"

describe OpenXml::DrawingML::Properties::TabList do
  include PropertyTestMacros

  it_should_use tag: :tabLst, name: "tab_list"

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
      instance << OpenXml::DrawingML::Properties::TabStop.new.tap do |tab|
        tab.position = 500
      end
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:tabLst>\n    <a:tab pos=\"500\"/>\n  </a:tabLst>")
    end
  end
end
