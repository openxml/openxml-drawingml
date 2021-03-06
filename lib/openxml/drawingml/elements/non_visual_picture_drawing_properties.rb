module OpenXml
  module DrawingML
    module Elements
      class NonVisualPictureDrawingProperties < OpenXml::Element
        include HasChildren
        namespace :pic
        tag :cNvPicPr

        attribute :preferRelativeResize, expects: :boolean
      end
    end
  end
end
