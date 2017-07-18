FactoryGirl.define do
  factory :user do
    first_name "Admin"
    last_name "User"
    email "admin@template.mattlong.la"
    admin true
  end
end
