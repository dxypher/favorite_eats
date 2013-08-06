class AddLongitudeAndLatitudeToFavorite < ActiveRecord::Migration
  def change
    add_column :favorites, :longitude, :float
    add_column :favorites, :latitude, :float
  end
end
