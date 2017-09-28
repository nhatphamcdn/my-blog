require 'rails_helper'

RSpec.describe "portfolios/new", type: :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :title => "MyString",
      :skills => "MyString",
      :summary => "MyText",
      :image => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input[name=?]", "portfolio[title]"

      assert_select "input[name=?]", "portfolio[skills]"

      assert_select "textarea[name=?]", "portfolio[summary]"

      assert_select "input[name=?]", "portfolio[image]"

      assert_select "input[name=?]", "portfolio[url]"
    end
  end
end
