FactoryGirl.define do
	factory :user do
		name									"Hideo Saito"
		email									"hidex@gmail.com"
		password							"foobar"
		password_confirmation	"foobar"
	end
end