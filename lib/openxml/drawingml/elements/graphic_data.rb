module OpenXml
  module DrawingML
    module Elements
      class GraphicData < OpenXml::DrawingML::Element
        include HasChildren

        attribute :uri, expects: :string

      end
    end
  end
end
