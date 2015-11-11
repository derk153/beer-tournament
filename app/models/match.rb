class Match < ActiveRecord::Base
  belongs_to :left_match, class_name: 'Match'
  belongs_to :right_match, class_name: 'Match'
  belongs_to :tournament

  has_one :left_parent, class_name: 'Match'
  has_one :right_parent, class_name: 'Match'

  has_many :team_matches, dependent: :destroy
  has_many :teams, through: :team_matches

end
