class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.date :publish_date
      t.string :author
      t.string :url
      t.integer :pages
      t.integer :rating
      t.string :id_category

      t.timestamps
    end
  end
end
