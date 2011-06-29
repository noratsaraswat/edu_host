require 'spec_helper'

describe "admin_people/edit.html.erb" do
  before(:each) do
    @admin_person = assign(:admin_person, stub_model(AdminPerson,
      :name => "MyString",
      :lessonID => 1
    ))
  end

  it "renders the edit admin_person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_people_path(@admin_person), :method => "post" do
      assert_select "input#admin_person_name", :name => "admin_person[name]"
      assert_select "input#admin_person_lessonID", :name => "admin_person[lessonID]"
    end
  end
end
