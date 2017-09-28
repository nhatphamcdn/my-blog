require 'rails_helper'

RSpec.describe "authors/profiles/edit", type: :view do
  before(:each) do
    @authors_profile = assign(:authors_profile, Authors::Profile.create!())
  end

  it "renders the edit authors_profile form" do
    render

    assert_select "form[action=?][method=?]", authors_profile_path(@authors_profile), "post" do
    end
  end
end
