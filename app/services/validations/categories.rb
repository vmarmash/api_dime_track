# frozen_string_literal: true

module Validations
  module Categories
    def categories_present?
      return if categories.present?

      errors.add(:categories, I18n.t('services.categories.index.blank'))
    end

    def category_present?
      return if category.present?

      errors.add(:category, I18n.t('services.categories.show.blank'))
    end

    def name_ok?
      return if params['name'].present?

      errors.add(:category, I18n.t('services.categories.create.name.blank'))
    end

    def description_ok?
      # need to do
    end
  end
end
