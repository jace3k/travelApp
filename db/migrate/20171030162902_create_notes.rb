class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :trip, index: true
      t.references :user, index: true
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
