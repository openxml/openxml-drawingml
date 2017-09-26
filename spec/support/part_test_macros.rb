module PartTestMacros

  def xml(part_name)
    File.read(File.join(File.dirname(__FILE__), "data", "parts", "#{part_name}_part.xml"))
      .lines
      .map(&:strip)
      .join
  end

  def self.included(base)
    attr_reader :part
    base.extend ClassMethods
  end

  module ClassMethods

    def it_should_output_correct_xml(part_name: nil)
      it "should be able to output the correct XML" do
        if part_name.nil?
          part_name = described_class.to_s.split(/::/).last
          part_name = part_name.gsub(/(.)([A-Z])/, '\1_\2').downcase
        end

        expect(part.read).to eq(xml(part_name))
      end
    end

  end

end
