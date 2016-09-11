class AddDefaultValueToPoints < ActiveRecord::Migration[5.0]
  def up
    change_column :campers, :points, :integer, :default => 0
  end

  def down
    change_column :campers, :points, :integer, :default => nil
  end
end
