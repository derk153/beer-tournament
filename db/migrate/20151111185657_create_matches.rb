class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :left_match, references: :matches
      t.references :right_match, references: :matches
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_foreign_key :matches, :matches, column: :left_match_id
    add_foreign_key :matches, :matches, column: :right_match_id
  end
end
