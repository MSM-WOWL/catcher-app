FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@factory.com'}
    password              {'00test'}
    password_confirmation {password}
  end
end