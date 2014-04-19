require 'spec_helper'

describe "Static Pages" do

  describe "Home" do
    it "whit content 'Sample App'" do
      visit "/static_pages/home"
      expect(page).to have_content('Sample App')
    end

    it "whit title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help" do
    it "whit content 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_content('Help')
    end

    it "whit title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About" do
    it "whit content 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end

    it "whit title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
