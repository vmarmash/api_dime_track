# frozen_string_literal: true

module Costs
  class Show < Base
    validate :cost_present?

    def items
      serialized_data(serializer, cost)
    end

    def message
      I18n.t('services.costs.show.success')
    end
  end
end
