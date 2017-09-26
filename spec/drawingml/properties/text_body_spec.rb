require "spec_helper"

describe OpenXml::DrawingML::Properties::TextBody do
  include PropertyTestMacros

  it_should_use tag: :txBody, name: "text_body"

  it_should_have_properties :body_properties, :list_style
end
