require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :Name => "MyString",
      :Password => "MyString",
      :Phone => "MyString",
      :Address => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_Name", :name => "user[Name]"
      assert_select "input#user_Password", :name => "user[Password]"
      assert_select "input#user_Phone", :name => "user[Phone]"
      assert_select "input#user_Address", :name => "user[Address]"
    end
  end
end
