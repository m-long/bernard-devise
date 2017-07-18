require 'rails_helper'

RSpec.describe "device_models/index", type: :view do
  before(:each) do
    assign(:device_models, [
      DeviceModel.create!(
        :name => "Name",
        :user => nil,
        :device_brand => nil
      ),
      DeviceModel.create!(
        :name => "Name",
        :user => nil,
        :device_brand => nil
      )
    ])
  end

  it "renders a list of device_models" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
