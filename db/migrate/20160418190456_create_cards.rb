class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :family
      t.string :title
      t.text :working_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
