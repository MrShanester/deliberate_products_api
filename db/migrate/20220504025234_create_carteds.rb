class CreateCarteds < ActiveRecord::Migration[6.1]
  def change
    create_table :carteds do |t|
      t.integer :order_id
      t.integer :product_id

      t.timestamps
    end
  end
end
