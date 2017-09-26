module OpenXml
  module DrawingML
    module Properties
      class Blip < OpenXml::Properties::ComplexProperty
        include HasChildren, ContainsProperties
        namespace :a
        tag :blip

        attribute :compression_state, one_of: %i{ email hqprint none print screen }, displays_as: :cstate

        with_namespace :r do
          attribute :embed, expects: :string
          attribute :link, expects: :string
        end

        # TODO: All the various blip child elements as properties

        property :extension_list

        def render?
          true
        end

      end
    end
  end
end
