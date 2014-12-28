class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :email
    	t.string :first_name
    	t.string :last_name
      t.text :shipping_address
      t.text :billing_address

      t.timestamps
    end
  end
end
