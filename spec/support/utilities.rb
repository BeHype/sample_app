include ApplicationHelper

def valid_sigin(user)
	fill_in "Email",	with: user.email
	fill_in "Password", with: user.Password
	click_button "Sign in"
end

RSPEC::Matchers.define :have_error_message do |message|
	match do |page|
		page.should have_selector('div.alert.alert-error'), text: message)
	end
end