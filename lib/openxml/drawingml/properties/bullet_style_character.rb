module OpenXml
  module DrawingML
    module Properties
      class BulletStyleCharacter < OpenXml::Properties::ComplexProperty
        namespace :a
        tag :buChar

        attribute :character, displays_as: :char, expects: :string

      end
    end
  end
end
