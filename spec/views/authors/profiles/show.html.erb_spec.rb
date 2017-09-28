require 'rails_helper'

RSpec.describe "authors/profiles/show", type: :view do
  before(:each) do
    @authors_profile = assign(:authors_profile, Authors::Profile.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
