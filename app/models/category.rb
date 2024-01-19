class Category < ApplicationRecord
  belongs_to :user

  has_many :category_costs, dependent: :destroy
  has_many :costs, through: :category_costs

  def owner_name
    user = User.find_by(id: user_id)

    user.name || user.email
  end
end
