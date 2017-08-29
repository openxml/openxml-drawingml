module OpenXml
  module DrawingML
    module Elements
      class Blip < OpenXml::DrawingML::Element
        include HasChildren

        tag :blip

        attribute :compression_state, one_of: %i{ email hqprint none print screen }, displays_as: :cstate

        with_namespace :r do
          attribute :embed, expects: :string
          attribute :link, expects: :string
        end

      end
    end
  end
end
