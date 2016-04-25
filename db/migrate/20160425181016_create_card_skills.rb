class CreateCardSkills < ActiveRecord::Migration
  def change
    create_table :card_skills do |t|
      t.references :card, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
