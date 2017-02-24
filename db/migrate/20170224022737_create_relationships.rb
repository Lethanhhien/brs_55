class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :id_flower
      t.integer :id_flowed

      t.timestamps
    end
  end
end
