module OpenXml
  module DrawingML
    module Properties
      class GroupShapeLocks < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :grpSpLocks

        attribute :disable_aspect_ratio_change, displays_as: :noChangeAspect, expects: :boolean
        attribute :disable_shape_grouping, displays_as: :noGrp, expects: :boolean
        attribute :disable_moving, displays_as: :noMove, expects: :boolean
        attribute :disable_resizing, displays_as: :noResize, expects: :boolean
        attribute :disable_rotation, displays_as: :noRot, expects: :boolean
        attribute :disable_selection, displays_as: :noSelect, expects: :boolean
        attribute :disable_shape_ungrouping, displays_as: :noUngrp, expects: :boolean

        property :extension_list

      end
    end
  end
end
