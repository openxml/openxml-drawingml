module OpenXml
  module DrawingML
    module Properties
      class ColorMapping < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :clrMap

        COLOR_SCHEME_INDEX = %i{
          dk1 lt1 dk2 lt2 accent1 accent2 accent3 accent4 accent5 accent6 hlink folHlink
        }.freeze

        attribute :bg1, one_of: COLOR_SCHEME_INDEX
        attribute :tx1, one_of: COLOR_SCHEME_INDEX
        attribute :bg2, one_of: COLOR_SCHEME_INDEX
        attribute :tx2, one_of: COLOR_SCHEME_INDEX
        attribute :accent1, one_of: COLOR_SCHEME_INDEX
        attribute :accent2, one_of: COLOR_SCHEME_INDEX
        attribute :accent3, one_of: COLOR_SCHEME_INDEX
        attribute :accent4, one_of: COLOR_SCHEME_INDEX
        attribute :accent5, one_of: COLOR_SCHEME_INDEX
        attribute :accent6, one_of: COLOR_SCHEME_INDEX
        attribute :hlink, one_of: COLOR_SCHEME_INDEX
        attribute :folHlink, one_of: COLOR_SCHEME_INDEX

        property :extension_list

      end
    end
  end
end
