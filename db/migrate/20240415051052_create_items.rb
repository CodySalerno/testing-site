class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_type
      t.string :id_of_jet
      t.timestamps
    end
  end
end
