require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      book: nil,
      user: nil,
      status: 1,
      body: "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[book_id]"

      assert_select "input[name=?]", "review[user_id]"

      assert_select "input[name=?]", "review[status]"

      assert_select "textarea[name=?]", "review[body]"
    end
  end
end
