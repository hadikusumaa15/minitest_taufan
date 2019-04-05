class CreateWakandas < ActiveRecord::Migration[5.1]
  def change
    create_table :wakandas do |t|
      t.string :name
      t.decimal :price
      t.date :released_on

      t.timestamps
    end
  end
end
