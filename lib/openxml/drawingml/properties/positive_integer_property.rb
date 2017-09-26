module OpenXml
  module DrawingML
    module Properties
      class PositiveIntegerProperty < OpenXml::Properties::PositiveIntegerProperty
        private def value_attribute
          "val"
        end

      end
    end
  end
end
