module Costs
  class Create < Base
    def call
      return cost unless category_id.present?
      
      create_category_cost
    end
    
    private

    def create_category_cost
      CategoryCost.create(cost_id: cost.id, category_id: category_id) if cost.save

      cost
    end

    def cost
      @cost ||= current_user.costs.new(cost_params)
    end

    def cost_params
      @cost_params ||= params.require(:cost).permit(:name, :amount, :currency, :rate_vault).merge(user_id: current_user.id)
    end

    def category_id
      @category_id ||= params.dig('cost', 'category_ids')
    end
  end
end