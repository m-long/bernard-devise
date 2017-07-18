require 'rails_helper'

RSpec.describe "keys/new", type: :view do
  before(:each) do
    assign(:key, Key.new(
      :name => "MyString",
      :value => "MyString",
      :remote => nil
    ))
  end

  it "renders new key form" do
    render

    assert_select "form[action=?][method=?]", keys_path, "post" do

      assert_select "input[name=?]", "key[name]"

      assert_select "input[name=?]", "key[value]"

      assert_select "input[name=?]", "key[remote_id]"
    end
  end
end
