class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 8, scale: 2
      t.string :complited_date
      t.integer :state

      t.timestamps
    end
  end
end
