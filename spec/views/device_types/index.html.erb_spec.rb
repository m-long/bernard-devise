require 'rails_helper'

RSpec.describe "device_types/index", type: :view do
  before(:each) do
    assign(:device_types, [
      DeviceType.create!(
        :name => "Name"
      ),
      DeviceType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of device_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
