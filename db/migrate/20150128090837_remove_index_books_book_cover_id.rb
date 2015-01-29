class RemoveIndexBooksBookCoverId < ActiveRecord::Migration
  def change
    remove_index :books, column: [:book_cover_id]
    remove_column :books, :book_cover_id
  end

end
