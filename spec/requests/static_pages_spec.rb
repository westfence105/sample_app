require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end

    it "should have the content 'Sample App'" do
    	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end
  end

  describe "Help Page" do
    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end

    it "should have the content 'Help'" do
    	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    	visit '/static_pages/help'
    	expect(page).to have_content('Help')
    end
  end

  describe "About Page" do
    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end

    it "should have the content 'About Us'" do
    	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    	visit '/static_pages/about'
    	expect(page).to have_content('About Us')
    end
  end

end
