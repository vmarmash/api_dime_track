# frozen_string_literal: true

class Cost < ApplicationRecord
  belongs_to :user

  has_many :category_costs, dependent: :destroy
  has_many :categories, through: :category_costs

  enum currency: { '₴': 0, '$': 1 }
end
