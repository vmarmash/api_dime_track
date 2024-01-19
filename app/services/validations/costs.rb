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

    def name_ok?
      errors.add(:cost, I18n.t('services.costs.create.name.blank')) if params[:name].blank?
    end

    def amount_ok?
      errors.add(:cost, I18n.t('services.costs.create.amount.blank')) if params[:amount].blank?
      errors.add(:cost, I18n.t('services.costs.create.amount.invalid')) unless params[:amount].is_a?(Integer)
    end

    def currency_ok?
      errors.add(:cost, I18n.t('services.costs.create.currency.blank')) if params[:currency].blank?
      errors.add(:cost, I18n.t('services.costs.create.currency.invalid')) unless Cost.currencies.include? params[:currency]
    end

    def category_present?
      return if category_id.blank?
      return if category.present?

      errors.add(:category, I18n.t('services.categories.show.blank'))
    end
  end
end
