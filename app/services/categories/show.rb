# frozen_string_literal: true

module Categories
  class Show < Base
    validate :category_present?

    def items
      serialized_data(serializer, category)
    end

    def message
      I18n.t('services.categories.show.success')
    end
  end
end
