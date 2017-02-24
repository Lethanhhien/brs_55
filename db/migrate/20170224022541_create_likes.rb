class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :id_user
      t.integer :id_review
      t.boolean :like

      t.timestamps
    end
  end
end
