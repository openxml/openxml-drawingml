module OpenXml
  module DrawingML
    module Properties
      class EffectDag < OpenXml::Properties::ComplexProperty
        include HasChildren
        namespace :a
        tag :effectDag

        attribute :dag_name, displays_as: :name, expects: :string
        attribute :type, one_of: %i{ sib tree }

        # TODO: Perhaps enumerate all of the effects that can be contained by
        # this effects container? But since effects containers can contain
        # effects containers, maybe it's just more straightforward to shovel on
        # regular elements for this.

      end
    end
  end
end
