FactoryBot.define do
  factory :post_image do
    user { nil }
    image { "MyString" }
    caption { "MyText" }
  end
end
