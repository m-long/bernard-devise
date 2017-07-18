require 'rails_helper'

RSpec.describe "remotes/show", type: :view do
  before(:each) do
    @remote = assign(:remote, Remote.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Supported Devices/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Flags/)
    expect(rendered).to match(/Include/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Driver/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Header/)
    expect(rendered).to match(/Zero/)
    expect(rendered).to match(/One/)
    expect(rendered).to match(/Two/)
    expect(rendered).to match(/Three/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Foot/)
    expect(rendered).to match(/Repeat/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Pre Data/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/Post Data/)
    expect(rendered).to match(/Pre/)
    expect(rendered).to match(/Post/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/Toggle Bit Mask/)
    expect(rendered).to match(/Repeat Mask/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
  end
end
