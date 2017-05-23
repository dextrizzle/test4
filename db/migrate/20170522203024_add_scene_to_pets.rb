class AddSceneToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :scene, :string
  end
end
