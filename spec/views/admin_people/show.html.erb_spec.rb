require 'spec_helper'

describe "admin_people/show.html.erb" do
  before(:each) do
    @admin_person = assign(:admin_person, stub_model(AdminPerson,
      :name => "Name",
      :lessonID => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
