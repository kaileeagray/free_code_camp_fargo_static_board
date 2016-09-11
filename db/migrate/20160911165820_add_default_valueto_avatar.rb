class AddDefaultValuetoAvatar < ActiveRecord::Migration[5.0]
  def up
    change_column :campers, :avatar, :string, :default => "no-face.png"
  end

  def down
    change_column :campers, :avatar, :string, :default => nil
  end
end
