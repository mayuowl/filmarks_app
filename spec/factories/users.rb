FactoryBot.define do
  factory :user do
    sequence(:name) {|n| "user#{n}" }
    email { "#{name.downcase}+#{Time.current.to_i}@dummy.co.jp" }
    sequence(:account) {|n| "#{ Faker::Name.name }-#{n}"}
  end
end
