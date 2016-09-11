class RemoveNameFromCampers < ActiveRecord::Migration[5.0]
  def change
    remove_column :campers, :name, :string
  end
end
