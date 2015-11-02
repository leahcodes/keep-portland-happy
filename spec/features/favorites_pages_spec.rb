require 'rails_helper'

describe "working with favorites" do

  before :each do
    User.create(email: "admin@admin.com", password: "password", admin: true);
    visit "/accounts/sign_in"
    fill_in 'Email', :with => "admin@admin.com"
    fill_in 'Password', :with => "password"
    click_on("Log in")
    visit "/eats/new"
    fill_in 'Name', :with => "Test eat"
    fill_in 'Category', :with => "Test category"
    fill_in 'Address', :with => "Test address"
    fill_in 'Location', :with => "Test location"
    fill_in 'Neighborhood', :with => "Test neighborhood"
    click_on("Create Eat")
  end

  it "allows user to add eat to favorites list" do
    visit "/"
    within ".top-eats" do
      click_link('add-to-favorites')
    end
    find('.faves').should have_content('Test eat')
  end

end
