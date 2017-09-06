class RenameUnitsToCampaigns < ActiveRecord::Migration[5.0]
  def change
  	rename_table :units, :campaigns
  end
end
