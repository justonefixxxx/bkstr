require 'rails_helper'

RSpec.describe Book, :type => :model do
	before { @book = build :book }
	subject { @book }
	it { should be_valid }


	describe "it" do
	end
end
