require 'rails_helper'

RSpec.describe "jerseys/show", type: :view do
  before(:each) do
    @jersey = assign(:jersey, Jersey.create!(
      :person => nil,
      :team => nil,
      :number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
