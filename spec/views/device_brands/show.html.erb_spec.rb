require 'rails_helper'

RSpec.describe "device_brands/show", type: :view do
  before(:each) do
    @device_brand = assign(:device_brand, DeviceBrand.create!(
      :name => "Name",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
