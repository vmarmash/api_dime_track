# frozen_string_literal: true

module Categories
  class Create < Base
    def items
      @items ||= current_user.categories.create(category_params)
    end

    def message
      return 'Success' if items.present?

      'blank'
    end

    def category_params
      @category_params ||= params.require(:category).permit(:name, :description).merge(user_id: current_user.id)
    end
  end
end
