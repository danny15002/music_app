class AddTables < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.timestamps null: false
    end

    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :rec_type, null: false
      t.timestamps null: false
    end

    add_index :albums, :band_id

    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :track_type, null: false
      t.string :lyrics
      t.timestamps null: false
    end

    add_index :tracks, :album_id
  end
end
