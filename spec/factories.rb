FactoryGirl.define do
  factory :user do
    name     "Steve Roettger"
    email    "steve@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end