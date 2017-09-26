require "spec_helper"

describe OpenXml::DrawingML::Properties::ExtensionList do
  include PropertyTestMacros

  it_should_use tag: :extLst, name: "extension_list"

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
      instance << OpenXml::DrawingML::Properties::Extension.new.tap do |extension|
        extension.uri = "http://microsoft.com"
      end
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:extLst>\n    <a:ext uri=\"http://microsoft.com\"/>\n  </a:extLst>")
    end
  end
end
