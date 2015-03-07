require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :city => "MyString",
      :state => "MyString"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_state[name=?]", "location[state]"
    end
  end
end
