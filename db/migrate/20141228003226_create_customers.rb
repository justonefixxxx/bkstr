class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :shipping_address
      t.string :billing_address

      t.timestamps
    end
  end
end
