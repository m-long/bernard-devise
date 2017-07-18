require 'rails_helper'

RSpec.describe "remotes/edit", type: :view do
  before(:each) do
    @remote = assign(:remote, Remote.create!(
      :name => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :supported_devices => "MyString",
      :bits => 1,
      :flags => "MyString",
      :include => "MyString",
      :manual_sort => false,
      :suppress_repeat => 1,
      :driver => "MyString",
      :eps => 1,
      :aeps => 1,
      :header => "MyString",
      :zero => "MyString",
      :one => "MyString",
      :two => "MyString",
      :three => "MyString",
      :ptrail => 1,
      :plead => 1,
      :foot => "MyString",
      :repeat => "MyString",
      :pre_data_bits => 1,
      :pre_data => "MyString",
      :post_data_bits => 1,
      :post_data => "MyString",
      :pre => "MyString",
      :post => "MyString",
      :gap => 1,
      :repeat_gap => 1,
      :min_repeat => 1,
      :toggle_bit => 1,
      :toggle_bit_mask => "MyString",
      :repeat_mask => "MyString",
      :frequency => 1,
      :duty_cycle => 1
    ))
  end

  it "renders the edit remote form" do
    render

    assert_select "form[action=?][method=?]", remote_path(@remote), "post" do

      assert_select "input[name=?]", "remote[name]"

      assert_select "input[name=?]", "remote[brand]"

      assert_select "input[name=?]", "remote[model]"

      assert_select "input[name=?]", "remote[supported_devices]"

      assert_select "input[name=?]", "remote[bits]"

      assert_select "input[name=?]", "remote[flags]"

      assert_select "input[name=?]", "remote[include]"

      assert_select "input[name=?]", "remote[manual_sort]"

      assert_select "input[name=?]", "remote[suppress_repeat]"

      assert_select "input[name=?]", "remote[driver]"

      assert_select "input[name=?]", "remote[eps]"

      assert_select "input[name=?]", "remote[aeps]"

      assert_select "input[name=?]", "remote[header]"

      assert_select "input[name=?]", "remote[zero]"

      assert_select "input[name=?]", "remote[one]"

      assert_select "input[name=?]", "remote[two]"

      assert_select "input[name=?]", "remote[three]"

      assert_select "input[name=?]", "remote[ptrail]"

      assert_select "input[name=?]", "remote[plead]"

      assert_select "input[name=?]", "remote[foot]"

      assert_select "input[name=?]", "remote[repeat]"

      assert_select "input[name=?]", "remote[pre_data_bits]"

      assert_select "input[name=?]", "remote[pre_data]"

      assert_select "input[name=?]", "remote[post_data_bits]"

      assert_select "input[name=?]", "remote[post_data]"

      assert_select "input[name=?]", "remote[pre]"

      assert_select "input[name=?]", "remote[post]"

      assert_select "input[name=?]", "remote[gap]"

      assert_select "input[name=?]", "remote[repeat_gap]"

      assert_select "input[name=?]", "remote[min_repeat]"

      assert_select "input[name=?]", "remote[toggle_bit]"

      assert_select "input[name=?]", "remote[toggle_bit_mask]"

      assert_select "input[name=?]", "remote[repeat_mask]"

      assert_select "input[name=?]", "remote[frequency]"

      assert_select "input[name=?]", "remote[duty_cycle]"
    end
  end
end
