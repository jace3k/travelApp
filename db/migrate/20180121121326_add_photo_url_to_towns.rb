class AddPhotoUrlToTowns < ActiveRecord::Migration
  def change
    add_column :towns, :photo_url, :string
  end
end
