require 'rails_helper'

RSpec.describe "remotes/index", type: :view do
  before(:each) do
    assign(:remotes, [
      Remote.create!(
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :supported_devices => "Supported Devices",
        :bits => 2,
        :flags => "Flags",
        :include => "Include",
        :manual_sort => false,
        :suppress_repeat => 3,
        :driver => "Driver",
        :eps => 4,
        :aeps => 5,
        :header => "Header",
        :zero => "Zero",
        :one => "One",
        :two => "Two",
        :three => "Three",
        :ptrail => 6,
        :plead => 7,
        :foot => "Foot",
        :repeat => "Repeat",
        :pre_data_bits => 8,
        :pre_data => "Pre Data",
        :post_data_bits => 9,
        :post_data => "Post Data",
        :pre => "Pre",
        :post => "Post",
        :gap => 10,
        :repeat_gap => 11,
        :min_repeat => 12,
        :toggle_bit => 13,
        :toggle_bit_mask => "Toggle Bit Mask",
        :repeat_mask => "Repeat Mask",
        :frequency => 14,
        :duty_cycle => 15
      ),
      Remote.create!(
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :supported_devices => "Supported Devices",
        :bits => 2,
        :flags => "Flags",
        :include => "Include",
        :manual_sort => false,
        :suppress_repeat => 3,
        :driver => "Driver",
        :eps => 4,
        :aeps => 5,
        :header => "Header",
        :zero => "Zero",
        :one => "One",
        :two => "Two",
        :three => "Three",
        :ptrail => 6,
        :plead => 7,
        :foot => "Foot",
        :repeat => "Repeat",
        :pre_data_bits => 8,
        :pre_data => "Pre Data",
        :post_data_bits => 9,
        :post_data => "Post Data",
        :pre => "Pre",
        :post => "Post",
        :gap => 10,
        :repeat_gap => 11,
        :min_repeat => 12,
        :toggle_bit => 13,
        :toggle_bit_mask => "Toggle Bit Mask",
        :repeat_mask => "Repeat Mask",
        :frequency => 14,
        :duty_cycle => 15
      )
    ])
  end

  it "renders a list of remotes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Supported Devices".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Flags".to_s, :count => 2
    assert_select "tr>td", :text => "Include".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Driver".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "Zero".to_s, :count => 2
    assert_select "tr>td", :text => "One".to_s, :count => 2
    assert_select "tr>td", :text => "Two".to_s, :count => 2
    assert_select "tr>td", :text => "Three".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Foot".to_s, :count => 2
    assert_select "tr>td", :text => "Repeat".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Pre Data".to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "Post Data".to_s, :count => 2
    assert_select "tr>td", :text => "Pre".to_s, :count => 2
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => "Toggle Bit Mask".to_s, :count => 2
    assert_select "tr>td", :text => "Repeat Mask".to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
  end
end
