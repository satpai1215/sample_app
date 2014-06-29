require 'spec_helper'

describe "Static pages" do

#	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	subject { page }

	 describe "Home page" do
	    before { visit root_path }

	    it { should have_content('Sample App') }
	    it { should have_title(full_title('')) }
	    it { should_not have_title('| Home') }
	  end

	  describe "Help page" do
	    before { visit help_path }

	    it { should have_content('Help') }
	    it { should have_title(full_title('Help')) }
	  end

	  describe "About page" do
	    before { visit about_path }

	    it { should have_content('About') }
	    it { should have_title(full_title('About Us')) }
	  end

	  describe "Contact page" do
	    before { visit contact_path }

	    it { should have_content('Contact') }
	    it { should have_title(full_title('Contact')) }
	  end
end


	# describe "Help page" do

	# 	it "should have the content 'Help'" do
	# 	  visit help_path
	# 	  expect(page).to have_content('Help')
	# 	end

	# 	it "should have the title 'Help'" do
	# 	  visit help_path
	# 	  expect(page).to have_title("#{base_title} | Help")
	# 	end
	# end

	# describe "About page" do

	# 	it "should have the content 'About Us'" do
	# 	  visit about_path
	# 	  expect(page).to have_content('About Us')
	# 	end

	# 	it "should have the title 'About Us'" do
	# 	  visit about_path
	# 	  expect(page).to have_title("#{base_title} | About Us")
	# 	end
	# end

	# describe "Contact page" do

	#     it "should have the content 'Contact'" do
	#       visit contact_path
	#       expect(page).to have_content('Contact')
	#     end

	#     it "should have the title 'Contact'" do
	#       visit contact_path
	#       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
	#     end
 #  	end