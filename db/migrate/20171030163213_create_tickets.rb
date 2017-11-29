class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :user, index: true
      t.references :town, index: true
      t.references :town, index: true
      t.datetime :departure
      t.datetime :arrive
      t.float :price
      t.references :ticket_type, index: true

      t.timestamps
    end
  end
end
