require 'rails_helper'

RSpec.describe "devices/new", type: :view do
  before(:each) do
    assign(:device, Device.new(
      :name => "MyString",
      :location => nil,
      :device_model => nil
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input[name=?]", "device[name]"

      assert_select "input[name=?]", "device[location_id]"

      assert_select "input[name=?]", "device[device_model_id]"
    end
  end
end
