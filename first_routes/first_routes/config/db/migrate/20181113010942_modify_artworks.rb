class ModifyArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :image_url, null:false
    rename_column :artworks, :owner_id, :artist_id
  end

  add_index :artworks, :image_url
end
