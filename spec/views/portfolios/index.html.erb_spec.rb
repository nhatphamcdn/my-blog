require 'rails_helper'

RSpec.describe "portfolios/index", type: :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
        :title => "Title",
        :skills => "Skills",
        :summary => "MyText",
        :image => "Image",
        :url => "Url"
      ),
      Portfolio.create!(
        :title => "Title",
        :skills => "Skills",
        :summary => "MyText",
        :image => "Image",
        :url => "Url"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
