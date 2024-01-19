# frozen_string_literal: true

module Costs
  class Base < BaseService
    include Validations::Costs

    def cost
      @cost ||= current_user.costs.find_by(id: params['id'])
    end

    def costs
      @costs ||= current_user.costs
    end
  end
end
