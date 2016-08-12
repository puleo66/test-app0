FactoryGirl.define do
  factory :user do
	  email         { Faker::Internet.email }
	  password      { Faker::Internet.password(10, 10) }

	  trait :admin do
		  role 'admin'
	  end
	end

end