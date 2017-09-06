class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :url
      t.string :title
      t.string :description
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
