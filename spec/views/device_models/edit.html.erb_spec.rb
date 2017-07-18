require 'rails_helper'

RSpec.describe "device_models/edit", type: :view do
  before(:each) do
    @device_model = assign(:device_model, DeviceModel.create!(
      :name => "MyString",
      :user => nil,
      :device_brand => nil
    ))
  end

  it "renders the edit device_model form" do
    render

    assert_select "form[action=?][method=?]", device_model_path(@device_model), "post" do

      assert_select "input[name=?]", "device_model[name]"

      assert_select "input[name=?]", "device_model[user_id]"

      assert_select "input[name=?]", "device_model[device_brand_id]"
    end
  end
end
