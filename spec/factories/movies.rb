FactoryBot.define do
  factory :movie do
    sequence(:title) {|n| "movie#{n}" }
  end
end
