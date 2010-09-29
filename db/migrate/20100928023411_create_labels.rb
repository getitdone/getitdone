class CreateLabels < ActiveRecord::Migration
  def self.up
    create_table :labels do |t|
      t.string :name
      t.string :color,  :limit => 10, :default => "D7E3EA"
      t.references :item

      t.timestamps
    end

    create_table :items_labels, :id => false do |t|
      t.references :item, :label
    end
  end

  def self.down
    drop_table :labels
  end
end
