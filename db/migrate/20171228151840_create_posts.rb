class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :trip, index: true
      t.references :user, index: true
      t.string :content

      t.timestamps
    end
  end
end
