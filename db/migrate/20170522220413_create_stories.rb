class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :scene
      t.string :event
      t.integer :x
      t.integer :y
      t.text :data

      t.timestamps
    end
  end
end
