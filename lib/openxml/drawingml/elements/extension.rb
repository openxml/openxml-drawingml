module OpenXml
  module DrawingML
    module Elements
      class Extension < OpenXml::Element
        namespace :a
        tag :ext

        attribute :uri, expects: :string
        attribute :x, displays_as: :cx, expects: :integer
        attribute :y, displays_as: :cy, expects: :integer

      end
    end
  end
end
