class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :town, index: true
      t.references :place_name, index: true
      t.string :name
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end
