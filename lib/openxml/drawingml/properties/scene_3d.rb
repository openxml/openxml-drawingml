module OpenXml
  module DrawingML
    module Properties
      class Scene3d < SimplePropertyContainerProperty
        include HasChildren
        name "scene_3d"
        namespace :a
        tag :scene3d

        # TODO: Implement various 3d scene components: `camera`, `lightRig`, `backdrop`

        property :extension_list

      end
    end
  end
end
