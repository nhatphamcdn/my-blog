require 'rails_helper'

RSpec.describe "authors/profiles/new", type: :view do
  before(:each) do
    assign(:authors_profile, Authors::Profile.new())
  end

  it "renders new authors_profile form" do
    render

    assert_select "form[action=?][method=?]", authors_profiles_path, "post" do
    end
  end
end
