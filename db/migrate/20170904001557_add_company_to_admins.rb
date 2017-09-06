class AddCompanyToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :company, :string
  end
end
