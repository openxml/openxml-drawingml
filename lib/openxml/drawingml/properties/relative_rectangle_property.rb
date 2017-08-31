module OpenXml
  module DrawingML
    module Properties
      class RelativeRectangleProperty < OpenXml::Properties::ComplexProperty
        attribute :bottom_offset, displays_as: :b, expects: :percentage
        attribute :left_offset, displays_as: :l, expects: :percentage
        attribute :right_offset, displays_as: :r, expects: :percentage
        attribute :top_offset, displays_as: :t, expects: :percentage

      end
    end
  end
end
