class ChangeForeignKeyForPages < ActiveRecord::Migration[5.0]
  def change
		rename_column :pages, :unit_id, :campaign_id
  end
end
