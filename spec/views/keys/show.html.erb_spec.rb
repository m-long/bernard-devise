require 'rails_helper'

RSpec.describe "keys/show", type: :view do
  before(:each) do
    @key = assign(:key, Key.create!(
      :name => "Name",
      :value => "Value",
      :remote => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(//)
  end
end
