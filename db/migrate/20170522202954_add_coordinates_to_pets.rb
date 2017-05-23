class AddCoordinatesToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :x, :integer
    add_column :pets, :y, :integer
  end
end
