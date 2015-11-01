require 'rails_helper'

describe "working with eats" do

  before :each do
    User.create(email: "admin@admin.com", password: "password", admin: true);
    visit "/accounts/sign_in"
    fill_in 'Email', :with => "admin@admin.com"
    fill_in 'Password', :with => "password"
    click_on("Log in")
  end

  it "allows admin to add new eat on index page", js: true do
    visit "/"
    click_link "Add a New Eat"
    fill_in 'Name', :with => "Test eat"
    fill_in 'Category', :with => "Test category"
    fill_in 'Address', :with => "Test address"
    fill_in 'Location', :with => "Test location"
    fill_in 'Neighborhood', :with => "Test neighborhood"   
    click_on("Create Eat")
    page.should have_content "Test eat"
  end
end
