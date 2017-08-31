module OpenXml
  module DrawingML
    module Properties
      class EffectList < SimplePropertyContainerProperty
        include HasChildren
        namespace :a
        tag :effectLst

        # TODO: Perhaps enumerate all of the effects that can be contained by
        # this effects container? But since effects containers can contain
        # effects containers, maybe it's just more straightforward to shovel on
        # regular elements for this.

      end
    end
  end
end
