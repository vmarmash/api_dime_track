class RateVault < ApplicationRecord
  def average_usd
    rate = JSON.parse usd

    (rate.dig('cash', 'sale') + rate.dig('cash', 'buy')) / 2
  end
end
