gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './exercises/objects/unicorn'
require './exercises/objects/thing'
require './exercises/objects/gnome'
require './exercises/objects/squid'

# You get the first test for free... it's already passing.
class FindFirstWeirdThingTest < Minitest::Test
  def test_first_weird_thing
    thing1 = Thing.new('odd')
    thing2 = Thing.new('cool')
    thing3 = Thing.new('weird')
    thing4 = Thing.new('fun')
    thing5 = Thing.new('weird')

    things = [thing1, thing2, thing3, thing4, thing5]

    found = nil
    things.each do |thing|
      if thing.weird?
        found = thing
        break
      end
    end
    assert_equal thing3, found
  end
end

# This one is missing the block inside the loop.
class FindFirstPinkUnicornTest < Minitest::Test
  def test_first_pink_unicorn
    skip
    unicorn1 = Unicorn.new('white')
    unicorn2 = Unicorn.new('sparkly')
    unicorn3 = Unicorn.new('purple')
    unicorn4 = Unicorn.new('pink')
    unicorn5 = Unicorn.new('pink')

    unicorns = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5]

    found = nil
    unicorns.each do |unicorn|
      # write code here
    end
    assert_equal unicorn4, found
  end
end

# This one is missing the entire loop
class FindFirstRovingGnomeTest < Minitest::Test
  def test_first_roving_gnome
    skip
    gnome1 = Gnome.new('forest')
    gnome2 = Gnome.new('roving')
    gnome3 = Gnome.new('snorkeling')
    gnome4 = Gnome.new('evil')
    gnome5 = Gnome.new('roving')

    gnomes = [gnome1, gnome2, gnome3, gnome4, gnome5]

    found = nil

    # write code here

    assert_equal gnome2, found
  end
end

# You're on your own on this one.
class FindFirstGiantSquidTest < Minitest::Test
  def test_first_giant_squid
    skip
    squid1 = Squid.new('tiny')
    squid2 = Squid.new('inky')
    squid3 = Squid.new('giant')
    squid4 = Squid.new('deep sea')
    squid5 = Squid.new('giant')

    squiddies = [squid1, squid2, squid3, squid4, squid5]

    # write code here

    assert_equal squid3, found
  end
end

