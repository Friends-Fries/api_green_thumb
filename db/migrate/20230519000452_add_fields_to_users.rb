class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :city, null: true, foreign_key: true
    add_column :users, :role, :integer, null: false, default: 0
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
