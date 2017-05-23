class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.references :user, foreign_key: true
      t.integer :hunger
      t.integer :health
      t.integer :thirst
      t.integer :sickness
      t.integer :toilet
      t.integer :happyness
      t.integer :sleep

      t.timestamps
    end
  end
end
