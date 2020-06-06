class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.string :email
      t.boolean :mailist

      t.timestamps
    end
  end
end
