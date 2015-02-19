class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :image
      t.string :description
      t.timestamps
    end
  end
end
