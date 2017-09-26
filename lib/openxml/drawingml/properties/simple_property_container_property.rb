module OpenXml
  module DrawingML
    module Properties
      class SimplePropertyContainerProperty < SimpleBooleanProperty
        include OpenXml::ContainsProperties

        def initialize(*_args)
          super(true)
        end

      end
    end
  end
end
