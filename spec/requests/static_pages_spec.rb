require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path } 

    it "should have the h1 'Twitter'" do
      page.should have_selector('h1', text: 'Welcome to Twitter!')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        text: "Twitter")
    end

    it "should have a custom page title" do
      page.should have_selector('title', text: '| Welcome!')
    end
  end

  describe "Help page" do
    
    before { visit help_path}

    it "should have the h1 'Help'" do
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        text: "Twitter | Help")
    end
  end

  describe "About page" do
    
    before { visit about_path }

    it "should have the h1 'About'" do
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    text: "Twitter | About")
    end
  end

  describe "Contact page" do
    
    before { visit contact_path }

    it "should have the h1 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                    text: "Twitter | Contact")
    end
  end
end