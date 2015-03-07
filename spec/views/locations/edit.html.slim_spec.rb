require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_state[name=?]", "location[state]"
    end
  end
end
