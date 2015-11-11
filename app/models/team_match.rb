class TeamMatch < ActiveRecord::Base
  belongs_to :team
  belongs_to :match

  validates :team, uniqueness: { scope: :match }
end
