class Tournament < ActiveRecord::Base
  include Math
  has_many :matches

  validates :name, presence: true, uniqueness: true

  def levels
    sqrt(matches.count).to_i
  end

  def grouped_matches
    matches.group_by(&:match_level)
  end

end
