module OpenXml
  module DrawingML
    module Properties
      class CustomGeometry < SimplePropertyContainerProperty
        namespace :a
        tag :custGeom

        property :shape_adjustment_list
        property :geometry_guide_list
        # TODO: add property :adjustable_handle_list, tag: ahLst
        # TODO: add property :connection_list, tag: cxnLst
        # TODO: add property :rectangle, tag: rect
        property :path_list, required: true

      end
    end
  end
end
