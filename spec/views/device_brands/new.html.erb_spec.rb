require 'rails_helper'

RSpec.describe "device_brands/new", type: :view do
  before(:each) do
    assign(:device_brand, DeviceBrand.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new device_brand form" do
    render

    assert_select "form[action=?][method=?]", device_brands_path, "post" do

      assert_select "input[name=?]", "device_brand[name]"

      assert_select "input[name=?]", "device_brand[user_id]"
    end
  end
end
