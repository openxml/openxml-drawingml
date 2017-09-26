module OpenXml
  module DrawingML
    module Properties
      class IntegerProperty < OpenXml::Properties::IntegerProperty
        private def value_attribute
          "val"
        end

      end
    end
  end
end
