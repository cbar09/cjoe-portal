class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :invoice_id
      t.integer :shopify_order_id

      t.timestamps null: false
    end
  end
end
