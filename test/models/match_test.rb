require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  should have_many(:teams)
  should belong_to(:tournament)
end
