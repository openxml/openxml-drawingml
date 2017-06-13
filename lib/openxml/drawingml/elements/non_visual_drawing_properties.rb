module OpenXml
  module DrawingML
    module Elements
      class NonVisualDrawingProperties < OpenXml::DrawingML::Element
        namespace :pic
        tag :cNvPr

        attribute :description, expects: :string, displays_as: :descr
        attribute :hidden, expects: :boolean
        attribute :id, expects: :positive_integer
        attribute :picture_name, expects: :string, displays_as: :name
        attribute :title, expects: :string

      end
    end
  end
end
