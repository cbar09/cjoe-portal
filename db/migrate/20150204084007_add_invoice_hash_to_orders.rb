class AddInvoiceHashToOrders < ActiveRecord::Migration
  def up
    #execute "create extension hstore"
    add_column :orders, :invoice_hash, :text
  end

  def down
    remove_column :orders, :invoice_hash
  end
  
end
