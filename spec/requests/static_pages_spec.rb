require 'spec_helper'

describe "Static Pages" do

    subject { page }

    describe "Home Page" do
        before { visit root_path }
        it { should have_content('Sample App') }
        it { should have_title(full_title('')) }
        it { should_not have_title('| Home') }
    end

    describe "Help Page" do
        before { visit help_path }
        it { should  have_title(full_title('Help')) }
        it { should have_content('Help') }
    end

    describe "About Page" do
        before { visit about_path }
        it { should have_title(full_title('About Us')) }
        it { should have_content('About Us') }
    end

    describe "Contact Page" do
        before { visit contact_path }
        it { should have_title(full_title('Contact')) }
        it { should have_content('Contact') }
    end

end
