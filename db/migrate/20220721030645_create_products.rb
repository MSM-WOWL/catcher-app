class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string  :product_name, null: false
      t.integer :category_id,  null: false
      t.timestamps
    end
  end
end
