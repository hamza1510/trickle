class AddNameToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :name, :string
  end
end
