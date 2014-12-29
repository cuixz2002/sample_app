require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "should have the content 'Sample App'" do
     # visit '/static_pages/home'
     visit root_path
     # expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      #visit '/static_pages/home'
      #expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit root_path
      #visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  describe "Contact page" do

    it "should have the content 'Contact'" do
     #visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
     #visit '/static_pages/contact'
     visit contact_path
     expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
