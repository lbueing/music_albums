require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "An Album must have a name and artist" do
    assert albums(:slippery_when_wet).valid?
    albums(:slippery_when_wet).name = nil
    assert_not albums(:slippery_when_wet).valid?
  end

  test "Slippery When Wet by Bon Jovi" do
    assert_equal albums(:slippery_when_wet).artist, artists(:bonjovi)
  end

end
