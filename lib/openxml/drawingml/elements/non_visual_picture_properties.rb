module OpenXml
  module DrawingML
    module Elements
      class NonVisualPictureProperties < OpenXml::DrawingML::Element
        include HasChildren

        namespace :pic
        tag :nvPicPr

      end
    end
  end
end
