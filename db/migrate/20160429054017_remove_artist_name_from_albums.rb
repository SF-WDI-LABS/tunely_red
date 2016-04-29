class RemoveArtistNameFromAlbums < ActiveRecord::Migration
  def up
    remove_column :albums, :artist_name
  end
  def down
    add_column :albums, :artist_name, :string
  end
end
