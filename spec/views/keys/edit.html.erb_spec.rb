require 'rails_helper'

RSpec.describe "keys/edit", type: :view do
  before(:each) do
    @key = assign(:key, Key.create!(
      :name => "MyString",
      :value => "MyString",
      :remote => nil
    ))
  end

  it "renders the edit key form" do
    render

    assert_select "form[action=?][method=?]", key_path(@key), "post" do

      assert_select "input[name=?]", "key[name]"

      assert_select "input[name=?]", "key[value]"

      assert_select "input[name=?]", "key[remote_id]"
    end
  end
end
