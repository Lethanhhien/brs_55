class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :id_book
      t.integer :id_user
      t.integer :num_rate

      t.timestamps
    end
  end
end
