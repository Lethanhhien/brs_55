class CreateReadingBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :reading_books do |t|
      t.integer :id_user
      t.integer :id_book
      t.string :url
      t.boolean :status_reading
      t.boolean :favorite

      t.timestamps
    end
  end
end
