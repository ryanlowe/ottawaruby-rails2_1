class CreateEdits < ActiveRecord::Migration
  def self.up
    create_table :edits do |t|
      t.timestamps
      t.integer :item_id
      t.string  :attribute
      t.string  :old_value
      t.string  :new_value
    end
  end

  def self.down
    drop_table :edits
  end
end
