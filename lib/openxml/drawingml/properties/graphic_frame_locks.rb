module OpenXml
  module DrawingML
    module Properties
      class GraphicFrameLocks < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :graphicFrameLocks

        attribute :disable_grouping, displays_as: :noGrp, expects: :boolean
        attribute :disable_drilldown, displays_as: :noDrilldown, expects: :boolean
        attribute :disable_aspect_ratio_change, displays_as: :noChangeAspect, expects: :boolean
        attribute :disable_moving, displays_as: :noMove, expects: :boolean
        attribute :disable_resizing, displays_as: :noResize, expects: :boolean

        property :extension_list

      end
    end
  end
end
