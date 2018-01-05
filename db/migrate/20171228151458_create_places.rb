class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :coords
      t.references :type, index: true
      t.references :town, index: true
      t.string :description

      t.timestamps
    end
  end
end
