require 'rails_helper'

RSpec.describe "device_types/edit", type: :view do
  before(:each) do
    @device_type = assign(:device_type, DeviceType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit device_type form" do
    render

    assert_select "form[action=?][method=?]", device_type_path(@device_type), "post" do

      assert_select "input[name=?]", "device_type[name]"
    end
  end
end
