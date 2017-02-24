class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :id_book
      t.integer :id_user
      t.text :content

      t.timestamps
    end
  end
end
