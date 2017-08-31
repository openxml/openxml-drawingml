module OpenXml
  module DrawingML
    # Validation constants
    ST_FixedPercentage = /^-?((100)|([0-9][0-9]?))(\.[0-9][0-9]?)?%$/ # Part 1 - 22.9.2.3
    ST_PositiveFixedPercentage = /^((100)|([0-9][0-9]?))(\.[0-9][0-9]?)?%$/ # Part 1 - 22.9.2.10
    ST_Percentage = /^-?[0-9]+(\.[0-9]+)?%$/ # Part 1 - 22.9.2.9
    ST_PositivePercentage = /^[0-9]+(\.[0-9]+)?%$/ # Part 1 - 22.9.2.11
    ST_UniversalMeasure = /^(-?[0-9]+(:?\.[0-9]+)?)(:?mm|cm|in|pt|pc|pi)?$/ # Part 1 - 22.9.2.15
    ST_PositiveUniversalMeasure = /^[0-9]+(\.[0-9]+)?(mm|cm|in|pt|pc|pi)?$/ # Part 1 - 22.9.2.12

  end
end

require "openxml/package"
require "openxml/drawingml/properties"
require "openxml/drawingml/elements"
require "openxml/drawingml/parts"
