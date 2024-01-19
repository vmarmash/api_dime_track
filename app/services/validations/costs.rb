# frozen_string_literal: true

module Validations
  module Costs
    def costs_present?
      return if costs.present?

      errors.add(:costs, I18n.t('services.costs.index.blank'))
    end

    def cost_present?
      return if cost.present?

      errors.add(:cost, I18n.t('services.costs.show.blank'))
    end
  end
end
