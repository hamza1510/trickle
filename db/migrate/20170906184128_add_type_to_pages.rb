class AddTypeToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :type, :string
  end
end
