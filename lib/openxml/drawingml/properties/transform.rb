module OpenXml
  module DrawingML
    module Properties
      class Transform < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :xfrm

        attribute :rotation, displays_as: :rot, expects: :integer
        attribute :flip_horizontal, displays_as: :flipH, expects: :boolean
        attribute :flip_vertical, displays_as: :flipV, expects: :boolean

        property :offset
        property :extent

      end
    end
  end
end
