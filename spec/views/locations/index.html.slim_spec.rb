require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :city => "City",
        :state => "State"
      ),
      Location.create!(
        :city => "City",
        :state => "State"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
