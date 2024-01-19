# frozen_string_literal: true

module Costs
  class Index < Base
    def items
      @items ||= costs
    end

    def message
      return 'Success' if items.present?

      'blank'
    end
  end
end
