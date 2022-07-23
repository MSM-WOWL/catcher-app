class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :store_name, null: false
      t.integer    :price,      null: false
      t.text       :comment
      t.references :user,       null: false, foreign_key: true
      t.references :product,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
