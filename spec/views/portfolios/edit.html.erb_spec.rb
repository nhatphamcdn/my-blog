require 'rails_helper'

RSpec.describe "portfolios/edit", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :title => "MyString",
      :skills => "MyString",
      :summary => "MyText",
      :image => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do

      assert_select "input[name=?]", "portfolio[title]"

      assert_select "input[name=?]", "portfolio[skills]"

      assert_select "textarea[name=?]", "portfolio[summary]"

      assert_select "input[name=?]", "portfolio[image]"

      assert_select "input[name=?]", "portfolio[url]"
    end
  end
end
