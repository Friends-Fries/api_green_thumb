class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :uf, null: false
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
