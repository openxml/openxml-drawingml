module OpenXml
  module DrawingML
    module Properties
      class PresetDashStyle < ValueProperty
        namespace :a
        tag :prstDash

        def ok_values
          %i{ dash dashDot dot lgDash lgDashDot lgDashDotDot solid sysDash
              sysDashDot sysDashDotDot sysDot }
        end

      end
    end
  end
end
