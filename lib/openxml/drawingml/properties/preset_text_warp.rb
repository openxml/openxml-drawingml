module OpenXml
  module DrawingML
    module Properties
      class PresetTextWarp < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :prstTxWarp

        PRESET_WARPS = %i{
          textArchDown textArchDownPour textArchUp textArchUpPour textButton
          textButtonPour textCanDown textCanUp textCascadeDown textCascadeUp
          textChevron textChevronInverted textCircle textCirclePour
          textCurveDown textCurveUp textDeflate textDeflateBottom
          textDeflateInflate textDeflateInflateDeflate textDeflateTop
          textDoubleWave1 textFadeDown textFadeLeft textFadeRight textFadeUp
          textInflate textInflateBottom textInflateTop textNoShape textPlain
          textRingInside textRingOutside textSlantDown textSlantUp textStop
          textTriangle textTriangleInverted textWave1 textWave2 textWave4
        }.freeze

        attribute :preset, displays_as: :prst, one_of: PRESET_WARPS

      end
    end
  end
end
