module OpenXml
  module DrawingML
    module Properties
      class Graphic < SimplePropertyContainerProperty
        namespace :a
        tag :graphic

        property :data, as: :graphic_data

      end
    end
  end
end
