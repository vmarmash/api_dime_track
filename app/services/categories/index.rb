# frozen_string_literal: true

module Categories
  class Index < Base
    validate :categories_present?

    def items
      categories
    end

    def message
      I18n.t('services.categories.index.success')
    end
  end
end
