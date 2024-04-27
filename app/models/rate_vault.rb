# frozen_string_literal: true

class RateVault < ApplicationRecord
  has_many :costs # rubocop:disable Rails/HasManyOrHasOneDependent

  def average_usd
    rate = JSON.parse usd

    (rate.dig('cash', 'sale') + rate.dig('cash', 'buy')) / 2
  end

  def average_eur
    rate = JSON.parse eur

    (rate.dig('cash', 'sale') + rate.dig('cash', 'buy')) / 2
  end
end
