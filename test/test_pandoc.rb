require 'helper'

class TestPandoc < Test::Unit::TestCase

  context "pandoc" do
    setup do
      config = {
        'pandoc' => { 'extensions' => ['smart'] },
        'markdown' => 'pandoc'
      }
      @markdown = MarkdownConverter.new config
    end

    should "pass pandoc extensions" do
      assert_equal "<p>“smart”</p>", @markdown.convert('"smart"').strip
    end
  end
end
