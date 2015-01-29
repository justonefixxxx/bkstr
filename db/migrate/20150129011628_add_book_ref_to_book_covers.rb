class AddBookRefToBookCovers < ActiveRecord::Migration
  def change
    add_reference :book_covers, :book, index: true
  end
end
