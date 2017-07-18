require 'rails_helper'

RSpec.describe "device_brands/edit", type: :view do
  before(:each) do
    @device_brand = assign(:device_brand, DeviceBrand.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit device_brand form" do
    render

    assert_select "form[action=?][method=?]", device_brand_path(@device_brand), "post" do

      assert_select "input[name=?]", "device_brand[name]"

      assert_select "input[name=?]", "device_brand[user_id]"
    end
  end
end
