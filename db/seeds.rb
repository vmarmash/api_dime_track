require 'faker'

def create_category(user)
  category = Category.create(name: Faker::Device.manufacturer, user_id: user.id)
  5.times do
    create_cost(user, category)
  end
end

def create_cost(user, category)
  rate = ExchangeRate::Actual.new.call
  category.costs.create(
    user_id:     user.id,
    name:        Faker::Device.model_name,
    amount:      rand(1..2000),
    currency:    rand(0..2),
    rate_vault_id:  rate.id
  )
end

user = User.create(email: 'test123@example.com', password: '12345678')

5.times do
  create_category(user)
end