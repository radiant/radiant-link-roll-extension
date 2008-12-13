require File.dirname(__FILE__) + '/../test_helper'

class LinkRollExtensionTest < Test::Unit::TestCase
  def test_initialization
    assert_equal File.join(File.expand_path(RAILS_ROOT), 'vendor', 'extensions', 'link_roll'), LinkRollExtension.root
    assert_equal 'Link Roll', LinkRollExtension.extension_name
  end

end
