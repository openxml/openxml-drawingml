module OpenXml
  module DrawingML
    module Properties
      class GraphicData < OpenXml::Properties::ComplexProperty
        include OpenXml::HasChildren
        namespace :a
        tag :graphicData

        attribute :uri, expects: :string, required: true

      end
    end
  end
end
