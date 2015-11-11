class CreateTeamMatches < ActiveRecord::Migration
  def change
    create_table :team_matches do |t|
      t.references :team, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true
      t.boolean :visitor, default: false

      t.timestamps null: false
    end
  end
end
