require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :height_in_inches => 1,
      :weight_in_pounds => 1
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_gender[name=?]", "person[gender]"

      assert_select "input#person_height_in_inches[name=?]", "person[height_in_inches]"

      assert_select "input#person_weight_in_pounds[name=?]", "person[weight_in_pounds]"
    end
  end
end
