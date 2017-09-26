module OpenXml
  module DrawingML
    module Elements
      class GraphicData < OpenXml::Element
        include HasChildren
        namespace :a
        tag :graphicData

        attribute :uri, expects: :string

      end
    end
  end
end
