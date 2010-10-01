class AddStatusToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :status, :integer, :default => 0
    Item.update_all ["status = ?", 0]
  end

  def self.down
    remove_column :items, :status
  end
end
