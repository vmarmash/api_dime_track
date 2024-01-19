# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable,
         :api

  has_many :categories, dependent: :destroy
  has_many :costs, dependent: :destroy
end
