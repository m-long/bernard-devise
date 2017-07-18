require 'rails_helper'

RSpec.describe "device_brands/index", type: :view do
  before(:each) do
    assign(:device_brands, [
      DeviceBrand.create!(
        :name => "Name",
        :user => nil
      ),
      DeviceBrand.create!(
        :name => "Name",
        :user => nil
      )
    ])
  end

  it "renders a list of device_brands" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
