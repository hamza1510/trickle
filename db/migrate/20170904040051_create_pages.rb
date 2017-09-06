class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
