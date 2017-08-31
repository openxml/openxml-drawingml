require "openxml/drawingml/properties/color_property"

module OpenXml
  module DrawingML
    module Properties
      class ColorSchemeColor < ColorProperty
        namespace :a
        tag :schemeClr

        SCHEME_COLORS = %i{
          bg1 tx1 bg2 tx2 accent1 accent2 accent3 accent4 accent5 accent6 hlink
          folHlink phClr dk1 lt1 dk2 lt2
        }.freeze

        attribute :value, displays_as: :val, one_of: SCHEME_COLORS

        def initialize(value)
          super()
          self.value = value
        end

      end
    end
  end
end
