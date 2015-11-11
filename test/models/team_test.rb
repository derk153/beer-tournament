require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  should have_many(:matches)
  should validate_presence_of(:name)
end
