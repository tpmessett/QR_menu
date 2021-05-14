class AddBusinessNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Business_Name, :string
    add_column :users, :Opening_hours, :string
    add_column :users, :facebook, :string
    add_column :users, :instagram, :string
    add_column :users, :twitter, :string
    add_column :users, :tripadvisor_url, :string
    add_column :users, :google_url, :string
  end
end
