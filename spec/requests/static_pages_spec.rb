require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home" do
    it "whit content 'Sample App'" do
      visit "/static_pages/home"
      expect(page).to have_content('Sample App')
    end

    it "whit base title" do
      visit '/static_pages/home'
      expect(page).to have_title(base_title)
    end

    it "whit custom title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help" do
    it "whit content 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_content('Help')
    end

    it "whit title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About" do
    it "whit content 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end

    it "whit title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact" do
    it "whit content 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_content('Contact')
    end

    it "whit title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
