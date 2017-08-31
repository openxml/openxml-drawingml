module OpenXml
  module DrawingML
    module Parts
      class Theme < OpenXml::Part
        include OpenXml::ContainsProperties
        attr_reader :relationships
        attr_reader :theme_name

        property :theme_elements, required: true
        property :object_defaults
        property :extra_color_scheme_list
        property :custom_color_list

        property :extension_list

        def initialize
          @relationships = OpenXml::Parts::Rels.new
        end

        def theme_name=(value)
          raise ArgumentError, "Theme name must be a string" unless value.is_a?(String)
          @theme_name = value
        end

        def to_xml
          build_standalone_xml do |xml|
            xml[:a].theme(NAMESPACE_DEFINITION.merge(xml_attributes)) do
              property_xml(xml)
            end
          end
        end

        NAMESPACE_DEFINITION = {
          "xmlns:a" => "http://schemas.openxmlformats.org/drawingml/2006/main"
        }.freeze

      private

        def xml_attributes
          { name: theme_name }
        end

      end
    end
  end
end
