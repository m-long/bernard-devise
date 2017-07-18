require 'rails_helper'

RSpec.describe "keys/index", type: :view do
  before(:each) do
    assign(:keys, [
      Key.create!(
        :name => "Name",
        :value => "Value",
        :remote => nil
      ),
      Key.create!(
        :name => "Name",
        :value => "Value",
        :remote => nil
      )
    ])
  end

  it "renders a list of keys" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
