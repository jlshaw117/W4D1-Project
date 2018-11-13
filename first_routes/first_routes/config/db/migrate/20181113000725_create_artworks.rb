class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.integer :owner_id, null: false
      t.string  :title, null: false
      t.timestamps
    end

    add_index :artworks, :title
    add_index :artworks, :owner_id, unique: true
  end
end
