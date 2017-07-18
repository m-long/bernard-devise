require 'rails_helper'

RSpec.describe "device_models/show", type: :view do
  before(:each) do
    @device_model = assign(:device_model, DeviceModel.create!(
      :name => "Name",
      :user => nil,
      :device_brand => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
