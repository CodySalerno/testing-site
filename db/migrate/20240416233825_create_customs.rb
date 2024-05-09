class CreateCustoms < ActiveRecord::Migration[7.0]
  def change
    create_table :customs do |t|
      t.string :color
      t.string :size
      t.integer :price
      t.string :manufacturer
      t.boolean :crayon_walls
      t.boolean :entertainment_tablets
      t.string :built_in_game

      t.timestamps
    end
  end
end
