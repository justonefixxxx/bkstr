class CreateBookCategoryJoinTable < ActiveRecord::Migration
  def change
  	create_table :book_category, id: false do |t|
  		t.integer :book_id
  		t.integer :category_id
	  end

	  add_index :book_category, :book_id
	  add_index :book_category, :category_id
  end
end
