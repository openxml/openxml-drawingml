module OpenXml
  module DrawingML
    module Properties
      class FillPattern < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :pattFill

        PRESET_PATTERNS = %i{
          cross dashDnDiag dashHorz dashUpDiag dashVert
          diagBrick diagCross divot dkDnDiag dkHorz dkUpDiag dkVert dnDiag
          dotDmnd dotGrid horz horzBrick lgCheck lgConfetti lgGrid ltDnDiag
          ltHorz ltUpdiag ltVert narHorz narVert openDmnd pct10 pct20 pct25
          pct30 pct40 pct5 pct50 pct60 pct70 pct75 pct80 pct90 plaid shingle
          smCheck smConfetti smGrid solidDmnd sphere trellis upDiag vert wave
          wdDnDiag wnUpDiag weave zigZag
        }.freeze

        attribute :pattern, displays_as: :prst, one_of: PRESET_PATTERNS

      end
    end
  end
end
