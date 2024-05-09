class CreatePrebuilts < ActiveRecord::Migration[7.0]
  def change
    create_table :prebuilts do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :size
      t.integer :price
      t.string :manufacturer

      t.timestamps
    end
  end
end
