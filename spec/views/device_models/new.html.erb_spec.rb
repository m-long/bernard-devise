require 'rails_helper'

RSpec.describe "device_models/new", type: :view do
  before(:each) do
    assign(:device_model, DeviceModel.new(
      :name => "MyString",
      :user => nil,
      :device_brand => nil
    ))
  end

  it "renders new device_model form" do
    render

    assert_select "form[action=?][method=?]", device_models_path, "post" do

      assert_select "input[name=?]", "device_model[name]"

      assert_select "input[name=?]", "device_model[user_id]"

      assert_select "input[name=?]", "device_model[device_brand_id]"
    end
  end
end
