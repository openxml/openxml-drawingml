module OpenXml
  module DrawingML
    module Elements
      class Picture < OpenXml::DrawingML::Element
        include HasChildren

        namespace :pic
        tag :pic

      end
    end
  end
end
