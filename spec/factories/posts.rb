FactoryBot.define do
  factory :post do
    store_name {"サンプルストア"}
    price { 1000 }
    comment {"サンプルコメント"}
    association :user
  end
end
