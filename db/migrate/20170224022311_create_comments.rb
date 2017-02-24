class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :id_user
      t.integer :id_review
      t.text :content

      t.timestamps
    end
  end
end
