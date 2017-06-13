module OpenXml
  module DrawingML
    module Elements
      class ChildrenOffset < OpenXml::DrawingML::Element
        tag :chOff

        attribute :x, expects: :integer
        attribute :y, expects: :integer

      end
    end
  end
end
