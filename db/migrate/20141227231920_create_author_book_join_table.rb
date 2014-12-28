class CreateAuthorBookJoinTable < ActiveRecord::Migration
  def change
  	create_table :author_book, id: false do |t|
  		t.integer :author_id
  		t.integer :book_id
	  end

	  add_index :author_book, :author_id
	  add_index :author_book, :book_id
  end
end
