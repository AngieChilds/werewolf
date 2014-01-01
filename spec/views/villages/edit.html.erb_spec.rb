require 'spec_helper'

describe "villages/edit" do
  before(:each) do
    @village = assign(:village, stub_model(Village,
      :name => "MyString"
    ))
  end

  it "renders the edit village form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", village_path(@village), "post" do
      assert_select "input#village_name[name=?]", "village[name]"
    end
  end
end
