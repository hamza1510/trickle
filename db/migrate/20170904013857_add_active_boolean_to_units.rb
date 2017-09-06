class AddActiveBooleanToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :active, :boolean, default: false
  end
end
