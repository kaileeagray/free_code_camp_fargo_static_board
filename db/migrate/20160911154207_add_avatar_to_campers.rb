class AddAvatarToCampers < ActiveRecord::Migration[5.0]
  def change
    add_column :campers, :avatar, :string
  end
end
