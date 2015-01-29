class CreateBookCover < ActiveRecord::Migration
  def change
    create_table :book_covers do |t|
      t.string :image
    end
  end
end
