class AddWebsiteToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :website, :string
  end
end
