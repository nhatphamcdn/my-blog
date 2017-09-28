require 'rails_helper'

RSpec.describe "authors/profiles/index", type: :view do
  before(:each) do
    assign(:authors_profiles, [
      Authors::Profile.create!(),
      Authors::Profile.create!()
    ])
  end

  it "renders a list of authors/profiles" do
    render
  end
end
