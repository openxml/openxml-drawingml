module OpenXml
  module DrawingML
    module Elements
      class NonVisualShapeDrawingProperties < OpenXml::Element
        include HasChildren
        namespace :wps
        tag :cNvSpPr

        attribute :textbox, expects: :boolean, displays_as: :txBox

      end
    end
  end
end
