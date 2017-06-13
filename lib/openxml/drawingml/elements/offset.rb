module OpenXml
  module DrawingML
    module Elements
      class Offset < OpenXml::DrawingML::Element
        namespace :a
        tag :off

        attribute :x, expects: :integer
        attribute :y, expects: :integer

      end
    end
  end
end
