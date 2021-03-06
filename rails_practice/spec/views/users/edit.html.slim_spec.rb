require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      username: "MyString",
      password_digest: "MyString",
      email: "MyString",
      dm: false,
      roles: "MyString",
      reviews_count: 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[password_digest]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[dm]"

      assert_select "input[name=?]", "user[roles]"

      assert_select "input[name=?]", "user[reviews_count]"
    end
  end
end
