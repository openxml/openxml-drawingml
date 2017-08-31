module OpenXml
  module DrawingML
    module Properties
      class Extension < OpenXml::Properties::ComplexProperty
        include HasChildren
        namespace :a
        tag :ext

        attribute :uri, expects: :string

      end
    end
  end
end
