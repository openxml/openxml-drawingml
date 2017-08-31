module OpenXml
  module DrawingML
    module Properties
      class PictureLocks < OpenXml::Properties::ComplexProperty
        include OpenXml::ContainsProperties
        namespace :a
        tag :picLocks

        attribute :disable_grouping, displays_as: :noGrp, expects: :boolean
        attribute :disable_selection, displays_as: :noSelect, expects: :boolean
        attribute :disable_rotation, displays_as: :noRot, expects: :boolean
        attribute :disable_aspect_ratio_change, displays_as: :noChangeAspect, expects: :boolean
        attribute :disable_moving, displays_as: :noMove, expects: :boolean
        attribute :disable_resizing, displays_as: :noResize, expects: :boolean
        attribute :disable_edit_points, displays_as: :noEditPoints, expects: :boolean
        attribute :disable_adjustment_handles, displays_as: :noAdjustHandles, expects: :boolean
        attribute :disable_change_arrowheads, displays_as: :noChangeArrowheads, expects: :boolean
        attribute :disable_cropping, displays_as: :noCrop, expects: :boolean

        property :extension_list

      end
    end
  end
end
