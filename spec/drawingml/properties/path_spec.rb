require "spec_helper"

describe OpenXml::DrawingML::Properties::Path do
  include PropertyTestMacros

  it_should_use tag: :path, name: "path"

  %i{ stroked extrusion_ok }.each do |boolean_attribute|
    for_attribute(boolean_attribute) do
      it_should_behave_like_a_boolean_attribute
    end
  end

  %i{ width height }.each do |positive_coordinate|
    for_attribute(positive_coordinate) do
      [100, "10mm"].each do |good_value|
        with_value(good_value) do
          it_should_assign_successfully
          it_should_output_expected_xml
        end
      end

      [-100, "-10mm", :invalid].each do |bad_value|
        with_value(bad_value) do
          it_should_raise_an_exception
        end
      end
    end
  end

  for_attribute(:fill_mode) do
    %i{ none norm lighten lightenLess darken darkenLess }.each do |good_value|
      with_value(good_value) do
        it_should_assign_successfully
        it_should_output_expected_xml
      end
    end

    it_should_not_allow_invalid_value
  end

  # TODO: Children are not yet implemented
  # context "when adding children" do
  #   before(:each) do
  #     @instance = described_class.new
  #   end

  #   it "should raise an exception if the child isn't one of the accepted properties" do
  #     expect { instance << [] }.to raise_error(ArgumentError)
  #   end
  # end

  # context "when there are no children" do
  #   before(:each) do
  #     @instance = described_class.new
  #   end

  #   it "should not output any XML" do
  #     expect(xml(instance)).to eq("")
  #   end
  # end

  # context "when there is a child" do
  #   before(:each) do
  #     @instance = described_class.new
  #     instance << OpenXml::DrawingML::Properties::Path.new.tap do |path|
  #       path.width = 50
  #     end
  #   end

  #   it "should output the correct XML" do
  #     expect(xml(instance)).to eq("<a:pathLst>\n    <a:path w=\"50\"/>\n  </a:pathLst>")
  #   end
  # end
end
