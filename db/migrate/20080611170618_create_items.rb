class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.timestamps
      t.string   :name
      t.string   :media
      t.text     :description
      t.integer  :price
    end
  end

  def self.down
    drop_table :items
  end
end
