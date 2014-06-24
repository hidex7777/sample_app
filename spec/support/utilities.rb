include ApplicationHelper

def sign_in(user, options={})
	if otions[:no_capybara]
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remamber_token))
	else
		visit signin_path
		fill_in "Email",			with: user.email
		fill_in "Password",		with: user.password
		click_button "Sign in"
	end
end

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		expect(page).to have_selector('div.alert.alert-error', text: message)
	end
end