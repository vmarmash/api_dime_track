module Costs
  class Base < BaseService
    def cost
      @cost ||= current_user.costs.find_by(id: params['id'])
    end

    def costs
      @costs ||= current_user.costs
    end

    def call
      { items: items, message: message }
    end
  end
end