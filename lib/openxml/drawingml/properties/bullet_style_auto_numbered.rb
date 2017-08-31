module OpenXml
  module DrawingML
    module Properties
      class BulletStyleAutoNumbered < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :buAutoNum

        AUTONUMBER_SCHEMES = %i{
          alphaLcParenBoth alphaLcParenR alphaLcPeriod alphaUcParenBoth
          alphaUcParenR alphaUcPeriod arabic1Minus arabic2Minus
          arabicDbPeriod arabicDbPlain arabicParenBoth arabicParenR
          arabicPeriod arabicPlain circleNumDbPlain circleNumWdBlackPlain
          circleNumWdWhitePlain ea1ChsPeriod ea1ChsPlain eaChtPeriod
          eaChtPlain ea1JpnKorPeriod ea1JpnKorPlain hebrew2Minus
          hindiAlpha1Period hindiAlphaPeriod hindiNumParenR hindiNumPeriod
          romanLcParenBoth romanLcParenR romanLcPeriod romanUcParenBoth
          romanUcParenR romanUcPeriod thaiAlphaParenBoth thaiAlphaParenR
          thaiAlphaPeriod thaiNumParenBoth thaiNumParenR thaiNumPeriod
        }.freeze

        attribute :start_at, displays_as: :startAt, expects: :integer, in_range: (1..32_767)
        attribute :type, one_of: AUTONUMBER_SCHEMES

      end
    end
  end
end
