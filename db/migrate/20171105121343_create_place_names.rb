class CreatePlaceNames < ActiveRecord::Migration
  def change
    create_table :place_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
