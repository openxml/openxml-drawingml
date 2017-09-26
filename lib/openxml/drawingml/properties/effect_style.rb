module OpenXml
  module DrawingML
    module Properties
      class EffectStyle < SimplePropertyContainerProperty
        namespace :a
        tag :effectStyle

        property_choice required: true do
          property :effect_list
          property :effect_dag
        end
        property :scene_3d
        # TODO: add `sp3d` property

      end
    end
  end
end
