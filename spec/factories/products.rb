FactoryBot.define do
  factory :product do
    product_name {"サンプル"}
    category_id { 2 }

    after(:build) do |product|
      product.image.attach(io: File.open('./app/assets/images/test_image.png'), filename: 'test_image.png')
    end
  end
end