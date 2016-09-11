class CreateCampers < ActiveRecord::Migration[5.0]
  def change
    create_table :campers do |t|
      t.string :fcc_username
      t.string :name
      t.string :email
      t.integer :points
      t.timestamps null: false
    end
  end
end
