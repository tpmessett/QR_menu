class AddSlugToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :slug, :string
    add_index :menus, :slug, unique: true
  end
end
