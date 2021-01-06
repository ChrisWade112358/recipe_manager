FactoryGirl.define do
  factory :recipy, class: 'Recipie' do
    factory :recipe do
      name "Grule"
      description "It's Grule"
      association(:user)
  end
end
