module OpenXml
  module DrawingML
    module Elements
      class Extension < OpenXml::Element
        namespace :a
        tag :ext

        attribute :uri, expects: :string

      end
    end
  end
end
