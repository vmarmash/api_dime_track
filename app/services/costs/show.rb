module Costs
  class Show < Base
    def items
      @items ||= cost
    end

    def message
      return 'Success' if items.present?

      'blank'
    end
  end
end