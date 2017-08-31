module OpenXml
  module DrawingML
    module Properties
      class Tile < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :tile

        RECTANGLE_ALIGNMENTS = %i{ b bl br ctr l r t tl tr }.freeze

        attribute :alignment, displays_as: :algn, one_of: RECTANGLE_ALIGNMENTS
        attribute :flip, one_of: %i{ none x xy y }
        attribute :horizontal_ratio, displays_as: :sx, expects: :percentage
        attribute :vertical_ratio, displays_as: :sy, expects: :percentage
        attribute :horizontal_offset, displays_as: :tx, expects: :coordinate
        attribute :vertical_offset, displays_as: :ty, expects: :coordinate

      private

        def coordinate(value)
          message = "Invalid coordinate: should either be an integer (in EMUs) or include a unit"
          raise ArgumentError, message unless integer?(value) || valid_coordinate?(value)
        end

        def valid_coordinate?(value)
          value.is_a?(String) && value =~ /-?[0-9]+(\.[0-9]+)?(mm|cm|in|pt|pc|pi)/
        end

        def integer?(value)
          value.is_a?(Integer)
        end

      end
    end
  end
end
