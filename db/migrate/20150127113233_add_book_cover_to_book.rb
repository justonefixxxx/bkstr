class AddBookCoverToBook < ActiveRecord::Migration
  def change
    add_reference :books, :book_cover, index: true
  end
end
