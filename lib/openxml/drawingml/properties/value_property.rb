module OpenXml
  module DrawingML
    module Properties
      class ValueProperty < OpenXml::Properties::ValueProperty
        private def value_attribute
          "val"
        end

      end
    end
  end
end
