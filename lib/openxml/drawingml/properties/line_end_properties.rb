module OpenXml
  module DrawingML
    module Properties
      class LineEndProperties < OpenXml::Properties::ComplexProperty
        attribute :length, displays_as: :len, one_of: %i{ lg med sm }
        attribute :type, one_of: %i{ arrow diamond none oval stealth triangle }
        attribute :width, displays_as: :w, one_of: %i{ lg med sm }

      end
    end
  end
end
