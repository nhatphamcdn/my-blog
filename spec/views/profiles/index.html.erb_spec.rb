require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :phone => "Phone",
        :summary => "MyText"
      ),
      Profile.create!(
        :phone => "Phone",
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
