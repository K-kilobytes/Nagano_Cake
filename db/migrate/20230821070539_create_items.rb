class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genre_id,    null: false, default: ""
      t.string  :name,        null: false, default: ""
      t.text    :description, null: false, default: ""
      t.integer :unit_price,  null: false, default: ""
      t.boolean :is_for_sale, null: false, default: "true"

      t.timestamps
    end
  end
end
