class RemoveEmailFromCampers < ActiveRecord::Migration[5.0]
  def change
    remove_column :campers, :email, :string
  end
end
