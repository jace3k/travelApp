class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :place, index: true
      t.references :user, index: true
      t.string :content

      t.timestamps
    end
  end
end
