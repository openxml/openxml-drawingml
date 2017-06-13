module OpenXml
  module DrawingML
    module Elements
      class SRGBColor < OpenXml::DrawingML::Element
        tag :srgbClr
        name "srgb_color"

        attribute :value, expects: :hex_color, displays_as: :val

      end
    end
  end
end
