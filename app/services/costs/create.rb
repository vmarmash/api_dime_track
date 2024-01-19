# frozen_string_literal: true

module Costs
  class Create < Base
    validate :name_ok?
    validate :amount_ok?
    validate :currency_ok?
    validate :category_present?

    attr_reader :cost

    def items
      create_cost

      serialized_data(serializer, cost)
    end

    def message
      'Success'
    end

    private

    def create_cost
      @cost = current_user.costs.create(cost_params)

      create_category_cost if category_id.present? && cost.save
    end

    def create_category_cost
      CategoryCost.create(cost_id: cost.id, category_id: category_id)
    end

    def cost_params
      @cost_params ||= params.require(:cost).permit(:name, :amount, :currency).merge(user_id: current_user.id)
    end

    def category
      @category ||= Category.find_by(id: category_id)
    end

    def category_id
      @category_id ||= params['category_id']
    end
  end
end
