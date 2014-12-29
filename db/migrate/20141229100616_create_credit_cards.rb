class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :cvv
      t.string :expiration_date
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
