require 'test/test_helper'

class ColoredTagTest < ActiveSupport::TestCase

  def setup
    @commons = { :name => 'some_tag' }
  end

  test "color code validation" do
    assert_valid Tag.new( @commons.update( :color => '#990000', :text_color => '#788ade'))
#    assert_invalid Tag.new( @commons.update( :color => '#990000', :text_color => '#788ade'))
  end
end
