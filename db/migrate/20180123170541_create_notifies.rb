class CreateNotifies < ActiveRecord::Migration
  def change
    create_table :notifies do |t|
      t.references :user, index: true
      t.references :trip, index: true
      t.string :message
      t.integer :type

      t.timestamps
    end
  end
end
