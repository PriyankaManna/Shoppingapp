class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :picture
      t.float :price

      t.timestamps
    end
  end
end
