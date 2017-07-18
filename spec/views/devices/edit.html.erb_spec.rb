require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :name => "MyString",
      :location => nil,
      :device_model => nil
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input[name=?]", "device[name]"

      assert_select "input[name=?]", "device[location_id]"

      assert_select "input[name=?]", "device[device_model_id]"
    end
  end
end
