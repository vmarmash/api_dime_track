# frozen_string_literal: true

class Cost < ApplicationRecord
  belongs_to :user

  has_many :category_costs, dependent: :destroy
  has_many :categories, through: :category_costs

  enum currency: { hrn: 0, usd: 1, eur: 2 }

  def hrn_amount
    return amount if hrn?
    return amount * rate_vault.average_usd if usd?

    amount * rate_vault.average_eur if eur?
  end

  def usd_amount
    return amount if usd?
    return amount / rate_vault.average_usd if hrn?

    (amount / rate_vault.average_usd) * rate_vault.average_eur if eur?
  end

  def eur_amount
    return amount if eur?
    return amount / rate_vault.average_eur if hrn?

    (amount / rate_vault.average_eur) * rate_vault.average_usd if usd?
  end

  def rate_vault
    RateVault.find_by(id: rate_vault_id)
  end
end
