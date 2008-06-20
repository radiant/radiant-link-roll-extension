class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :description, :text
    end
  end

  def self.down
    drop_table :links
  end
end
