module OpenXml
  module DrawingML
    module Properties
      class Connection < OpenXml::Properties::ComplexProperty
        attribute :id, expects: :positive_integer, required: true
        attribute :index, displays_as: :idx, expects: :positive_integer, required: true

      end
    end
  end
end
