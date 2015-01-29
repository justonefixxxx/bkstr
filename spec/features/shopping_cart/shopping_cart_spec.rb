feature "Shopping cart" do
	# Scenario: Visitor adds book to the shopping cart
  #   Given Im on a book page
  #   When I push "Add to cart" button
  #   Then I see the book in the cart
	scenario "put book to the shopping cart" do

		book = FactoryGirl.create(:book)
		visit book_path(book)
		click_link_or_button('Add to cart', add_item)
		page.has_content?('Shopping cart', book.title)

	end
end
