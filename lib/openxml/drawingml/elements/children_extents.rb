module OpenXml
  module DrawingML
    module Elements
      class ChildrenExtents < OpenXml::Element
        namespace :a
        tag :chExt

        attribute :extent_length, expects: :positive_integer, displays_as: :cx
        attribute :extent_width, expects: :positive_integer, displays_as: :cy

      end
    end
  end
end
