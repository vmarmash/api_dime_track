# frozen_string_literal: true

module Costs
  class Index < Base
    validate :costs_present?

    def items
      serialized_data(serializer, costs)
    end

    def message
      I18n.t('services.costs.index.success')
    end
  end
end
