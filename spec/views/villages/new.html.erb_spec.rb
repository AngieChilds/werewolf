require 'spec_helper'

describe "villages/new" do
  before(:each) do
    assign(:village, stub_model(Village,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new village form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", villages_path, "post" do
      assert_select "input#village_name[name=?]", "village[name]"
    end
  end
end
