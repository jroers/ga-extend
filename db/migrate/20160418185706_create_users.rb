class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :password_digest
      t.string :program
      t.integer :cohort
      t.string :current_title

      t.timestamps null: false
    end
  end
end
