describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  context "#order_in_progress" do
  	before { @user = create(:user)}
  	it "returns order in progress" do
  		@order = create(:order, :user=>@user, :state=>Order.states[:in_progress])
  		expect(@user.order_in_progress).to equal @order
  	end

	end

end
