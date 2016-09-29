require 'rails_helper'

RSpec.describe "organization_teams/index", type: :view do
  before(:each) do
    assign(:organization_teams, [
      OrganizationTeam.create!(
        :organization => nil,
        :team => nil
      ),
      OrganizationTeam.create!(
        :organization => nil,
        :team => nil
      )
    ])
  end

  it "renders a list of organization_teams" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
