class Match < ActiveRecord::Base

  belongs_to :left_match, class_name: 'Match'
  belongs_to :right_match, class_name: 'Match'
  belongs_to :tournament

  has_one :child_left, class_name: 'Match', foreign_key: :left_match_id
  has_one :child_right, class_name: 'Match', foreign_key: :right_match_id

  has_many :team_matches, dependent: :destroy
  has_many :teams, through: :team_matches

  def self.level(l)
    select{ |m| m.match_level == l}
  end

  def child
    if child_left.present?
      return child_left
    else
      child_right
    end
  end

  def parents
    [left_match, right_match]
  end

  def match_level
    i = 0
    parent = left_match
    until parent.nil?
      parent = parent.left_match
      i += 1
    end
    i
  end



end
