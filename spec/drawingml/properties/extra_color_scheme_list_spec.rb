require "spec_helper"

describe OpenXml::DrawingML::Properties::ExtraColorSchemeList do
  include PropertyTestMacros

  it_should_use tag: :extraClrSchemeLst, name: "extra_color_scheme_list"

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
      allow_any_instance_of(OpenXml::DrawingML::Properties::ExtraColorScheme).to receive(:build_required_properties)
      instance << OpenXml::DrawingML::Properties::ExtraColorScheme.new
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:extraClrSchemeLst>\n    <a:extraClrScheme/>\n  </a:extraClrSchemeLst>")
    end
  end
end
