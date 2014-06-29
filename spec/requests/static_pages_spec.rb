require 'spec_helper'

describe "Static pages" do

#	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	subject { page }

	shared_examples_for "all static pages" do
		it {should have_selector('h1', text: heading)}
		it {should have_title(full_title(page_title))}
	end

	 describe "Home page" do
	    before { visit root_path }

	    let(:heading) {'Sample App'}
	    let(:page_title) {''}

	    it_should_behave_like "all static pages"
	    it { should_not have_title('| Home') }
	  end

	  describe "Help page" do
	    before { visit help_path }

	    let(:heading) {'Help'}
	    let(:page_title) {'Help'}

	    it_should_behave_like "all static pages"
	  end

	  describe "About page" do
	    before { visit about_path }

	    let(:heading) {'About'}
	    let(:page_title) {'About'}

	    it_should_behave_like "all static pages"
	  end

	  describe "Contact page" do
	    before { visit contact_path }

	    let(:heading) {'Contact'}
	    let(:page_title) {'Contact'}

	    it_should_behave_like "all static pages"
	  end

	  it "should have the right links on the layout" do
	  	visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Help"
		expect(page).to have_title(full_title('Help'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact'))
		click_link "Home"
		click_link "Sign up now!"
		expect(page).to have_title(full_title('Sign up'))
		click_link "sample app"
		expect(page).to have_title(full_title(''))

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