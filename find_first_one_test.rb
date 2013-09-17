gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindFirstOneTest < Minitest::Test
  Thing = Struct.new(:adjective) do
    def weird?
      adjective == 'weird'
    end
  end

  def test_first_thing
    thing1 = Thing.new('odd')
    thing2 = Thing.new('cool')
    thing3 = Thing.new('weird')
    thing4 = Thing.new('fun')
    thing5 = Thing.new('weird')

    things = [thing1, thing2, thing3, thing4, thing5]

    found = nil
    things.each do |thing|
      # write code here
    end
    assert_equal thing3.object_id, found.object_id
  end

  Unicorn = Struct.new(:color) do
    def pink?
      color == 'pink'
    end
  end

  def test_first_pink_unicorn
    skip
    unicorn1 = Unicorn.new('white')
    unicorn2 = Unicorn.new('sparkly')
    unicorn3 = Unicorn.new('purple')
    unicorn4 = Unicorn.new('pink')
    unicorn5 = Unicorn.new('pink')

    unicorns = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5]

    # write code here

    assert_equal unicorn4.object_id, found.object_id
  end
end

