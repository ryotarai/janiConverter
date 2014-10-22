FactoryGirl.define do
  factory :beacon do
    label { Faker::Lorem.word }
    url { Faker::Internet.url("example.com") }
    movie nil
  end

end
