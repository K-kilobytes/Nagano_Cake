class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :order_id,  null: false, default: ""
      t.integer :item_id,   null: false, default: ""
      t.integer :quantity,  null: false, default: ""
      t.integer :price,     null: false, default: ""
      t.integer :status,    null: false, default: "1"

      t.timestamps
    end
  end
end
