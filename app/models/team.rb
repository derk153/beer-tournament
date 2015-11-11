class Team < ActiveRecord::Base
  has_many :team_matches, dependent: :destroy
  has_many :matches, through: :team_matches

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
