class AddNames < ActiveRecord::Migration
  def change
    add_column :albums, :name, :string, default: ''
    change_column :albums, :name, :string, null: false

    add_column :tracks, :name, :string, default: ''
    change_column :tracks, :name, :string, null: false

  end
end
